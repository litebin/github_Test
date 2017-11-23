package apiTask.uppStep;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.Given;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by yaolei on 2017/10/12.
 */
public class UppMain extends RequestUtils {
    public static String txnSeqNo;
    public static String ac;
    private static final Logger logger = Logger.getLogger(RequestUtils.class);

    @Given("项目(.*)做ChinaPayDFSuccess_post请求数据准备(.*)和(.*)$")
    public void uppDp(String name, String path, String param) {
        ApiAction.uri = getIp(name) + path;
        JSONObject jsonObject = new JSONObject(param);
        Date dt = new Date();
        SimpleDateFormat matter1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat matter2 = new SimpleDateFormat("HH:mm:ss");
        String businessSeqNo = getRandomString(20) + getRandomNumberChar(11);
        jsonObject.put("txnDate", matter1.format(dt));
        jsonObject.put("txnTime", matter2.format(dt));
        jsonObject.put("businessSeqNo", businessSeqNo);
        ApiAction.param = jsonObject.toString();

    }


    @Given("项目(.*)做ChinaPayDFFail_post请求数据准备(.*)和(.*)$")
    public void uppDpFail(String name, String path, String param) {
        ApiAction.uri = getIp(name) + path;
        JSONObject jsonObject = new JSONObject(param);
        Date dt = new Date();
        SimpleDateFormat matter1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat matter2 = new SimpleDateFormat("HH:mm:ss");
        String businessSeqNo = getRandomString(20) + getRandomNumberChar(11);
        jsonObject.put("txnDate", matter1.format(dt));
        jsonObject.put("txnTime", matter2.format(dt));
        jsonObject.put("businessSeqNo", businessSeqNo);
        jsonObject.put("cardNo", ApiConf.getProperty("cardNo"));
        jsonObject.put("notifyUrl", ApiConf.getProperty("notifyUrl"));
        jsonObject.put("bizTypeCode", ApiConf.getProperty("bizTypeCode_301"));
        ApiAction.param = jsonObject.toString();

    }

    @Given("项目(.*)做ChinaPayDFSuccess_get交易状态查询数据准备(.*)$")
    public void uppDpFail(String name, String path) {
        ApiAction.uri = getIp(name) + path + txnSeqNo;

    }

    @When("^提取<txnSeqNo>执行post请求$")
    public void txnSeqNoPost() throws Throwable {
        // execute request
        TimeUnit.MILLISECONDS.sleep(3000);
        response = doPost();
        JSONObject jsonObject = new JSONObject(response);
        txnSeqNo = jsonObject.getJSONArray("splitTxns").getJSONObject(0).getString("txnSeqNo");
        System.out.println(txnSeqNo);
    }
    @When("^提取<txnSeqNo>不是JsonArray执行post请求$")
    public void ntxnSeqNoPost() throws Throwable {
        // execute request
        TimeUnit.MILLISECONDS.sleep(3000);
        response = dPost();

//        StringBuffer stringbuffer=new StringBuffer(response);
//        txnSeqNo=stringbuffer.substring(stringbuffer.indexOf("\"code\":") + 1, stringbuffer.indexOf(","));
//        System.out.println(txnSeqNo);
    }

    @When("^万达贷执行post请求$")
    public void wlSeqNoPost() throws Throwable {
        // execute request
        response = dPost();
        JSONObject jsonObject = new JSONObject(response);
        //   txnSeqNo = jsonObject.getJSONArray("splitTxns").getJSONObject(0).getString("txnSeqNo");
        txnSeqNo = jsonObject.getJSONArray("splitTxns").getJSONObject(0).getString("txnSeqNo");
        System.out.println(txnSeqNo);
    }

    @When("^等待后执行get请求$")
    public void dGet() throws Throwable {
        // execute request
        TimeUnit.MILLISECONDS.sleep(9000);
        response = doGet();
    }

    private String dPost() throws UnsupportedEncodingException {
        logger.info("开始执行Post请求");
        String result = null;
        // 创建HttpClient实例
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建httppost
        //JSONObject jsonObject = new JSONObject(formparams);
        HttpPost dpost = new HttpPost(uri);
        dpost.setHeader("Content-type", "application/json;charset=utf-8");
        dpost.setHeader("X-OHM-ClientKey", "wandaloans");
        dpost.setHeader("X-OHM-RequestId", "request_id");
        dpost.setHeader("X-OHM-UserId", "123321");
        StringEntity entity = new StringEntity(param.toString(), Charset.forName("UTF-8"));
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


    @Then("^检查接口是否返回正确(.*)$")
    public void dtxnSeqNo(String txnSeqNo) {
        Pattern p = Pattern.compile(txnSeqNo);
        JSONObject jsonObject = new JSONObject(response);
        ac = jsonObject.getJSONArray("splitTxns").getJSONObject(0).getString("txnSeqNo");
        Matcher m = p.matcher(ac);
        Boolean actual = m.find();
        setCheckPoint(true, actual);
        check();
    }

    @Then("^万达贷检查接口是否返回正确(.*)$")
    public void dwddtxnSeqNo(String txnSeqNo) {
        Pattern p = Pattern.compile(txnSeqNo);
        JSONObject jsonObject = new JSONObject(response);
        ac = jsonObject.getJSONArray("splitTxns").getJSONObject(0).getString("txnSeqNo");
        boolean isMatch = Pattern.matches(txnSeqNo, ac);
        System.out.println("txnSeqNo的检验结果是》》》:" + isMatch);
    }

    @Then("^校验接口状态txnSeqNo是否返回正确(.*)$")
    public void dQuery(String txnSeqNo) {
        Pattern p = Pattern.compile(txnSeqNo);
        JSONObject jsonObject = new JSONObject(response);
        //  ac = jsonObject.getJSONArray("splitTxns").getJSONObject(0).getString("txnSeqNo");
        ac = jsonObject.getString("txnSeqNo");
        boolean isMatch = Pattern.matches(txnSeqNo, ac);
        System.out.println("txnSeqNo的检验结果是》》》" + isMatch);
    }


}