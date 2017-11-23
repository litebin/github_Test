package appTask.apis;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.Assert;
import appTask.utils.Generator;

import java.io.IOException;

/**
 * Created by corncandy on 2017/8/7.
 */
public class AccountApi {
    // 1.注册 2.修改登录密码 3.修改交易密码 4.绑定银行卡 5.邀请用户获取短信
    private static String getVerifyCode (String mobile, int source) throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpGet request = new HttpGet("http://10.213.57.211/wealth/api/v1/verifycode?phone=" + mobile + "&source=" + source);
        request.addHeader("content-type", "application/json");
        HttpResponse response = httpClient.execute(request);
        Assert.assertEquals(200, response.getStatusLine().getStatusCode());
        JSONObject result = new JSONObject(EntityUtils.toString(response.getEntity()));

        return result.getString("verifycode");
    }

    private static String register(String mobile, String verifyCode, String password) throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpPost request = new HttpPost("http://10.213.57.211/wealth/api/v1/register");
        JSONObject data = new JSONObject();
        data.put("mobile", mobile);
        data.put("verifycode", verifyCode);
        data.put("pwd", password);
        request.addHeader("content-type", "application/json");
        request.setEntity(new StringEntity(data.toString()));
        HttpResponse response = httpClient.execute(request);
        Assert.assertEquals(200, response.getStatusLine().getStatusCode());
        JSONObject result = new JSONObject(EntityUtils.toString(response.getEntity()));

        return result.getString("accessToken");
    }

    private static void riskAssess(String accessToken) throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpPost request = new HttpPost("http://10.213.57.211/wealth/api/v1/user/riskstatus");
        JSONArray data = new JSONArray();
        data.put(answerItem(64));
        data.put(answerItem(70));
        data.put(answerItem(75));
        data.put(answerItem(78));
        data.put(answerItem(83));
        data.put(answerItem(88));
        data.put(answerItem(91));
        data.put(answerItem(96));
        data.put(answerItem(99));
        data.put(answerItem(104));
        data.put(answerItem(110));
        request.addHeader("content-type", "application/json");
        request.addHeader("Authorization", accessToken);
        request.setEntity(new StringEntity(data.toString()));

        HttpResponse response = httpClient.execute(request);
        Assert.assertEquals(200, response.getStatusLine().getStatusCode());
    }

    private static JSONObject answerItem(int answer) {
        JSONObject result = new JSONObject();
        result.put("answerId", answer);
        return result;
    }

    private static void authenticate(String mobile, String accessToken) throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        String verifyCode = getVerifyCode(mobile, 4);
        HttpPost request = new HttpPost("http://10.213.57.211/wealth/api/v1/user/bankcard/add");
        JSONObject data = new JSONObject();
        data.put("cardNo", Generator.bankCard());
        data.put("phone", mobile);
        data.put("verifyCode", verifyCode);
        data.put("idCard", Generator.idCard());
        data.put("realName", Generator.name());
        request.addHeader("content-type", "application/json;charset=utf-8");
        request.addHeader("Authorization", accessToken);
        request.setEntity(new StringEntity(data.toString()));
        HttpResponse bankRes = httpClient.execute(request);
        Assert.assertEquals(200, bankRes.getStatusLine().getStatusCode());
    }

    private static void setPurchasePassword(String password, String accessToken) throws IOException {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpPost request = new HttpPost("http://10.213.57.211/wealth/api/v1/user/password");
        JSONObject data = new JSONObject();
        data.put("password", password);
        request.addHeader("content-type", "application/json");
        request.addHeader("Authorization", accessToken);
        request.setEntity(new StringEntity(data.toString()));
        HttpResponse response = httpClient.execute(request);
        Assert.assertEquals(200, response.getStatusLine().getStatusCode());
    }

    public static JSONObject generateNew() throws Throwable {
        String mobile = Generator.mobile();
        String verifyCode = getVerifyCode(mobile, 1);
        String password = "abc123";
        String purchasePassword = "112233";
        String accessToken = register(mobile, verifyCode, password);

        riskAssess(accessToken);
        authenticate(mobile, accessToken);
        setPurchasePassword(purchasePassword, accessToken);

        JSONObject account = new JSONObject();

        account.put("mobile", mobile);
        account.put("password", password);
        account.put("purchasePassword", purchasePassword);

        return account;
    }

    public static JSONObject generateBrandNew() throws IOException {
        String mobile = Generator.mobile();
        String verifyCode = getVerifyCode(mobile, 1);
        String password = "abc123";
        String purchasePassword = "112233";
        JSONObject account = new JSONObject();

        register(mobile, verifyCode, password);
        account.put("mobile", mobile);
        account.put("password", password);
        account.put("purchasePassword", purchasePassword);

        return account;
    }
}
