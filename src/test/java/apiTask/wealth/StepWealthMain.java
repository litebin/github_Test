package apiTask.wealth;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.UUID;

/**
 * Created by yaolei on 2017/8/1.
 */
public class StepWealthMain extends RequestUtils {
    public static String verifycode;
    public static int cardid;
    public static String bankCard = null;
    public static String handler = null;
    public static String orderNumber = null;

    /**
     * @TODO uri中放入随机电话号码
     * @parameter @path"请求的path"
     */
    @Given("^项目(.*)做wealthmobile_get请求数据准备(.*)$")
    public void verifycode_Dp(String name, String path) throws Throwable {
        // data prepare
        if (wealthMobile == null) {
            wealthMobile = "13" + getRandomNumberChar(9);
        }
        ApiAction.uri = getIp(name) + path + "phone=" + wealthMobile;
    }

    /**
     * @TODO 发送注册验证码数据准备
     * @parameter @path"请求的path"
     */
    @Given("^项目(.*)做register_get请求数据准备(.*)$")
    public void register_Dp(String name, String path) throws Throwable {
        // data prepare
        wealthMobile = "13" + getRandomNumberChar(9);
        ApiAction.uri = getIp(name) + path + "phone=" + wealthMobile;
    }

    /**
     * @TODO 提取verifycode
     */
    @When("^verifycode_执行get请求$")
    public void verifyCodeGet() throws Throwable {
        // execute request
        response = doGet();
        JSONObject jsonObject = new JSONObject(response);
        if (this.statuCode == 200) {
            verifycode = jsonObject.getString("verifycode");
        }
    }

    /**
     * @TODO 注册或修改密码数据准备
     * @parameter @path "请求的path"
     * @parameter @param " body"
     */
    @Given("^项目(.*)做wealthmobile_verifycode_post请求数据准备(.*)和(.*)$")
    public void mobile_code_Dp(String name, String path, String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name) + path;
        JSONObject json = new JSONObject(param);
        json.put("verifycode", verifycode);
        json.put("mobile", wealthMobile);
        ApiAction.param = json.toString();

    }

    /**
     * @TODO 固定手机号登录数据准备
     * @parameter @path "请求的path"
     * @parameter @param " body"
     */
    @Given("^项目(.*)做login_post请求数据准备(.*)和(.*)$")
    public void login_Dp(String name, String path, String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name) + path;
        JSONObject json = new JSONObject(param);
        json.put("mobile", ApiConf.getProperty("loginMobile"));
        ApiAction.param = json.toString();
    }

    /**
     * @TODO 随机手机号登录数据准备
     * @parameter @path "请求的path"
     * @parameter @param " body"
     */
    @Given("^项目(.*)做verifycode_post请求数据准备(.*)和(.*)$")
    public void verifyCode_Dp(String name, String path, String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name) + path;
        JSONObject json = new JSONObject(param);
        json.put("verifycode", verifycode);
        ApiAction.param = json.toString();
    }

    /**
     * @TODO 登录
     */
    @When("^token_执行post请求$")
    public void getTokenPost() throws Throwable {
        // execute request
        response = doPost();
        JSONObject jsonObject = new JSONObject(response);
        if (this.statuCode == 200) {
            wealAccesstoken = jsonObject.getString("accessToken");
        }
    }

    /**
     * @TODO 提取cardId
     */
    @Then("^cardId获取$")
    public void getFilterValue() throws Throwable {
        // get cardId
        JSONArray array = new JSONArray(response);
        JSONObject ob = (JSONObject) array.get(0);
        cardid = ob.getInt("cardId");
    }

    /**
     * @param path "请求的path"
     * @TODO 提取verifycode
     */
    @Given("^项目(.*)做cardId_get请求数据准备(.*)$")
    public void cardId_Dp(String name, String path) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path + "id=" + cardid;
    }


    /**
     * @param path"请求的path"
     * @TODO 发送添加银行卡验证码数据准备
     */
    @Given("^项目(.*)做addBank_get请求数据准备(.*)$")
    public void addBankVerifycode_Dp(String name, String path) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path + "phone=" + ApiConf.getProperty("loginMobile");
    }

    /**
     * @param path"请求的path"
     * @TODO 发送修改交易密码验证码数据准备
     */
    @Given("^项目(.*)做modifyTrade_get请求数据准备(.*)$")
    public void modifyTradeCode_Dp(String name, String path) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path + "phone=" + ApiConf.getProperty("loginMobile");
    }

    /**
     * @TODO 添加银行卡数据准备
     */
    @Given("^项目(.*)做addBank_post请求数据准备(.*)和(.*)$")
    public void addBank_Dp(String name, String path, String param) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path;
        bankCard = getBankCard();
        JSONObject json = new JSONObject(param);
        json.put("cardNo", bankCard);
        json.put("verifyCode", verifycode);
        json.put("phone", ApiConf.getProperty("loginMobile"));
        json.put("idCard", ApiConf.getProperty("idCard"));
        ApiAction.param = json.toString();
    }

    /**
     * @TODO 修改交易密码第一步数据准备
     * @parameter path "请求的path"
     * @parameter param " body"
     */
    @Given("^项目(.*)做step1_post请求数据准备(.*)和(.*)$")
    public void modifyStep1_Dp(String name, String path, String param) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path;
        JSONObject json = new JSONObject(param);
        json.put("bankcardno", ApiConf.getProperty("existCardNum"));
        json.put("code", verifycode);
        json.put("idno", ApiConf.getProperty("idCard"));
        ApiAction.param = json.toString();
    }

    /**
     * @TODO 修改交易密码第二步数据准备
     * @parameter @path "请求的path"
     * @parameter @param " body"
     */
    @Given("^项目(.*)做step2_post请求数据准备(.*)和(.*)$")
    public void modifyStep2_Dp(String name, String path, String param) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path;
        JSONObject json = new JSONObject(param);
        json.put("handler", handler);
        ApiAction.param = json.toString();
    }


    /**
     * @TODO 提取handler
     */
    @When("^handler_执行post请求$")
    public void getHandler() throws Throwable {
        // execute request
        response = doPost();
        JSONObject jsonObject = new JSONObject(response);
        if (this.statuCode == 200) {
            handler = jsonObject.getString("handler");
        }
    }

    /**
     * @TODO 提取traceNo
     */
    @When("^transactionList执行post请求$")
    public void getOrderNumberPost() throws Throwable {
        // execute request
        response = doPost();
        if (!response.equals("/[/]")) {
            JSONObject jsonObject = new JSONObject(response);
            orderNumber = jsonObject.getString("traceNo");
        }
    }

    /**
     * @TODO 调用traceNo
     * @parameter @path "请求的path"
     * @parameter @param " body"
     */
    @Given("^项目(.*)做TransactionRecord_post请求数据准备(.*)和(.*)$")
    public void TransactionRecord_Dp(String name, String path, String param) throws Throwable {
        // data prepare
        ApiAction.uri = getIp(name) + path;
        JSONObject json = new JSONObject(param);
        json.put("traceNo", orderNumber);
        ApiAction.param = json.toString();
    }


}



