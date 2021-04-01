package com.zgkaii.netty.demo.netty;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.buffer.PooledByteBufAllocator;
import io.netty.channel.*;
import io.netty.channel.epoll.EpollChannelOption;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/01 22:45
 * @Description: 服务端
 **/
public class EchoServer {
    static final int PORT = Integer.parseInt(System.getProperty("port", "8808"));

    public static void main(String[] args) throws Exception {
        final EchoServerHandler serverHandler = new EchoServerHandler();
        // 1.创建线程池
        EventLoopGroup bossGroup = new NioEventLoopGroup(2);
        NioEventLoopGroup workerGroup = new NioEventLoopGroup(16);

        try {
            // 2.服务端引导类
            ServerBootstrap b = new ServerBootstrap();
            // 3. 设置参数(可选)
            b.option(ChannelOption.SO_BACKLOG, 128)
                    .childOption(ChannelOption.TCP_NODELAY, true);

            // 4.设置线程池
            b.group(bossGroup, workerGroup)
                    // 5.指定所使用的NIO传输Channel类型
                    .channel(NioServerSocketChannel.class)
                    // 6.设置ServerSocketChannel对应的Handler，只能设置一个（可选）
                    .handler(new LoggingHandler(LogLevel.INFO))
                    // 7. 设添加一个EchoServerHandler到子Channel的ChannelPipeline中
                    .childHandler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel ch) throws Exception {
                            // EchoServerHandler被标注为@Shareable，所以我们可以总是使用同样的实例
                            ch.pipeline().addLast(serverHandler);
                        }
                    });
            // 8.异步地绑定服务器，调用 sync()方法阻塞等待直到绑定完成
            Channel ch = b.bind(PORT).sync().channel();
            System.out.println("开启netty http服务器，监听地址和端口为 http://127.0.0.1:" + PORT + '/');
            // 9.阻塞，直到Channel 关闭
            ch.closeFuture().sync();
        } finally {
            // 10.关闭线程池并且释放所有的资源
            bossGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }
}
