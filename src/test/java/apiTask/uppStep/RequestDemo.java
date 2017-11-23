package apiTask.uppStep;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.RequestUtils;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONException;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/**
 * Created by Administrator on 2017/11/6.
 */
public class RequestDemo extends ApiAction{
    private static final Logger logger = Logger.getLogger(RequestUtils.class);
    public static int statuCode;

    public String dpost() throws UnsupportedEncodingException {
        logger.info("开始执行Post请求");
        String result = null;
        // 创建HttpClient实例
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建httppost
        //JSONObject jsonObject = new JSONObject(formparams);
        HttpPost dpost = new HttpPost(uri);
        dpost.setHeader("Content-type", ApiConf.getProperty("Content-type"));
        dpost.setHeader("X-OHM-ClientKey", ApiConf.getProperty("X-OHM-ClientKey"));
        dpost.setHeader("X-OHM-RequestId", ApiConf.getProperty("X-OHM-RequestId"));
        dpost.setHeader("X-OHM-UserId", ApiConf.getProperty("X-OHM-UserId"));
        dpost.setHeader("Connection", ApiConf.getProperty("Connection"));
        StringEntity entity =new StringEntity(param.toString(), Charset.forName("UTF-8"));
        // UrlEncodedFormEntity uefEntity;
        try {
            //uefEntity = new UrlEncodedFormEntity(entity, "UTF-8");
            dpost.setEntity(entity);
            logger.info("执行请求的URI为：" + dpost.getURI());
            logger.info("请求参数为：" + param);
            // 执行httppost
            CloseableHttpResponse response = httpClient.execute(dpost);

            // 打印结果
            try {
                if (response != null) {
                    // 获取状态码
                    statuCode = response.getStatusLine().getStatusCode();
                    // 若状态码不为200，则关闭response，若为200，则获取返回信息
                    if (statuCode != 200) {
                        logger.error("request faild,status code：" + statuCode + response.getStatusLine());
                        try {
                            result = EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                            logger.info("response content:" + result);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        response.close();
                    } else {
                        response.getEntity().getContentLength();
                        try {
                            result = EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        // 将响应内容转化成JSON对象
                        ;
                        logger.info("response content:" + result);
                    }
                } else {
                    logger.info("response is null");
                }
            } finally {
                response.close();
                dpost.releaseConnection();
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e1) {
            e1.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }
}
