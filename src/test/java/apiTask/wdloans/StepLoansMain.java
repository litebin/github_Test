package apiTask.wdloans;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/7/21.
 */

/**
 * Modified by Pengcheng on 2017/9/18.
 */
public class StepLoansMain extends RequestUtils {

    public static String captcha=null;
    public static String issueBank=null;
    public static String verifyCode = null;
    public static String refreshToken=null;


    //发送验证码verifycode_post执行post请求
    @When("^verifycode_post执行post请求$")
    public void getVerifyCode() throws Throwable {
        // execute request
        response = doPost();
        JSONObject jsonObject = new JSONObject(response);
        if (this.statuCode == 200) {
            verifyCode = jsonObject.getString("verifycode");
        }
    }

    //登录：获取accesstoken_post请求
    @When("^login_getaccessToken_post执行post请求$")
    public void logingetaccessToken() throws Throwable {
        response = doPost();
        if (this.statuCode == 200) {
            JSONObject jsonObject = new JSONObject(response);
            wealAccesstoken = jsonObject.getString("accessToken");
            refreshToken = jsonObject.getString("refreshToken");
        }

    }

    //刷新验证码verifycode_post执行post请求
    @When("^refreshcaptcha_post执行post请求$")
    public void refreshCaptcha() throws Throwable {
        // execute request
        response = doPost();
        JSONObject jsonObject = new JSONObject(response);
        if (this.statuCode == 200) {
            captcha = jsonObject.getString("captcha");
        }
    }




    //新增银行卡发送验证码bankcardverifycode_post执行post请求
    @Then("^bankcardverifycode_post执行post请求$")
    public void bankcardverifycode() throws Throwable {
        // execute request
        response = doPost();
        JSONObject jsonObject = new JSONObject(response);
        if (this.statuCode == 200) {
            verifyCode=jsonObject.getString("verifycode");
        }
    }

    //根据银行卡号获取发行卡:获取开户行
    @When("^issuebank_get执行get请求$")
    public void getsuebank_Dp() throws Throwable {
        // send uri and body
        response=doGet();
        if (statuCode==200) {
            JSONObject json = new JSONObject(response);
            issueBank=json.getString("issueBank");
        }
    }

}
