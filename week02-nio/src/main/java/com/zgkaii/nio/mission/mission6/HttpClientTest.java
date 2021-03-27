package com.zgkaii.nio.mission.mission6;

import org.apache.http.*;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/03/26 21:18
 * @Description: HttpClient
 **/
public class HttpClientTest {
    /**
     * HttpClient对象
     */
    public static CloseableHttpClient httpClient;

    /**
     * 响应
     */
    private static CloseableHttpResponse httpResponse;

    /**
     * GET调用
     */
    public static String doGet(String url) throws IOException {
        // 创建一个httpClient对象
        httpClient = HttpClients.createDefault();
        String content = null;
        try {
            // 创建Get请求
            HttpGet httpGet = new HttpGet(url);
            // 执行get请求得到返回对象
            httpResponse = httpClient.execute(httpGet);
            // 获取响应的状态码
            int status = httpResponse.getStatusLine().getStatusCode();
            //获取响应头
            Header[] allHeaders = httpResponse.getAllHeaders();
            // 请求成功
            if (status == HttpStatus.SC_OK) {
                // 通过返回对象获取返回数据
                HttpEntity httpEntity = httpResponse.getEntity();
                if (httpEntity != null) {
                    content = EntityUtils.toString(httpEntity, "utf-8");
                    System.out.println("页面请求后返回结果 Content:" + content
                            + " Content-length:" + content.getBytes().length);
                    return content;
                }
            }
        } catch (Exception e) {
            System.out.println("页面请求失败，无法连接到该页面！");
            e.printStackTrace();
        } finally {
            // 关闭使用的资源
            HttpClientTest.destroyResources();
        }
        return content;
    }

    private static void destroyResources() {
        if (httpResponse != null) {
            try {
                httpResponse.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (httpClient != null) {
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) throws IOException {
        String url = "http://localhost:8800";
        String content = doGet(url);
        System.out.println("url:" + url + " content:" + content);
    }
}