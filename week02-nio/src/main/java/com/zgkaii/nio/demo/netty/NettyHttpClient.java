package com.zgkaii.nio.demo.netty;

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.*;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.util.CharsetUtil;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/01 16:51
 * @Description:
 */
public class NettyHttpClient {
    private static final String HOST = "http://127.0.0.1";
    private static final Integer PORT = 8804;

    public static void main(String[] args) throws InterruptedException {
        // 1.创建一个NioEventLoopGroup 对象实例
        NioEventLoopGroup group = new NioEventLoopGroup();
        try {
            // 2.创建客户端启动引导/辅助类：Bootstrap
            Bootstrap b = new Bootstrap();
            // 3.指定线程组
            b.group(group)
                    // 4.指定 IO 模型
                    .channel(NioSocketChannel.class)
                    .handler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        public void initChannel(SocketChannel ch) {
                            ChannelPipeline p = ch.pipeline();
                            // 5.这里可以自定义消息的业务处理逻辑
                            p.addLast(new MyClientHandler());
                        }
                    });

            // 6.尝试建立连接
            ChannelFuture f = b.connect(HOST, PORT).sync();
            // 7.等待连接关闭（阻塞，直到Channel关闭）
            f.channel().closeFuture().sync();
        } finally {
            group.shutdownGracefully();
        }
    }

    @ChannelHandler.Sharable
    public static class MyClientHandler extends SimpleChannelInboundHandler<ByteBuf> {

        @Override
        protected void messageReceived(ChannelHandlerContext ctx, ByteBuf msg) throws Exception {
            ctx.writeAndFlush(Unpooled.copiedBuffer("Netty rocks!", CharsetUtil.UTF_8));
        }

        public void channelRead0(ChannelHandlerContext ctx, ByteBuf in) {
            System.out.println("Client received: " + in.toString(CharsetUtil.UTF_8));
        }
    }
}