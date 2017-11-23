package apiTask.wdloans;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.json.JSONObject;


/**
 * Created by Pengcheng on 2017/9/18.
 */
public class StepLoansDatepre extends RequestUtils {


    //发送验证码:数据准备
    @Given("^项目(.*)做loansmobile_post请求数据准备(.*)和(.*)$")
    public void modify_Dp(String name,String path, String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name)+path;
        JSONObject json = new JSONObject(param);
        if (!json.has("mobile")) {
            loansMobile = "13" + getRandomNumberChar(9);
            json.put("mobile", loansMobile);
        }
        ApiAction.param = json.toString();
    }

    //注册:数据准备
    @Given("^项目(.*)做verifycode_loansmobile_post请求数据准备(.*)和(.*)$")
    public void verifyCode_Dp(String name,String path,String param) throws Throwable {
        // send uri and body
        ApiAction.uri =  getIp(name)+path;;
        JSONObject json = new JSONObject(param);
        if (!json.has("verifycode")) {
            json.put("verifycode", StepLoansMain.verifyCode);
        }
        if(!json.has("mobile")) {
            json.put("mobile", loansMobile);
        }
        ApiAction.param = json.toString();
    }

    //根据银行卡号获取发行卡:数据准备
    @Given("^项目(.*)做issuebank_get请求数据准备(.*)$")
    public void issuebank_Dp(String name,String path) throws Throwable {
        // send uri and body
        String uri=getIp(name)+path;
        ApiAction.uri = uri+ApiConf.getProperty("wdloans_bankcardNo");
    }

    //登录:数据准备
    @Given("^项目(.*)做wdloansLogin_post请求数据准备(.*)和(.*)$")
    public void wdloansLogin_Dp(String name,String path, String param) throws Throwable {
        // send uri and body
        ApiAction.uri =  getIp(name)+path;;
        JSONObject json = new JSONObject(param);
        if (!json.has("mobile")) {
            json.put("mobile", ApiConf.getProperty("wdloans_mobile"));
        }
        if(!json.has("pwd")) {
            json.put("pwd", ApiConf.getProperty("wdloans_pwd"));
        }

        ApiAction.param = json.toString();
    }

    //修改密码post请求数据准备
    @Given("^项目(.*)做forgetpass_post请求数据准备(.*)和(.*)$")
    public void forgetpass_Dp(String name,String path,String param){
        ApiAction.uri= getIp(name)+path;;
        JSONObject jsonObject = new JSONObject(param);
        jsonObject.put("verifycode", StepLoansMain.verifyCode);
        if (!jsonObject.has("pwd")) {
            jsonObject.put("pwd", "u"+getRandomNumberChar(5));
        }
        ApiAction.param=jsonObject.toString();
    }

    //刷新token_post请求数据准备
    @Given("^项目(.*)做refreshToken_post请求数据准备(.*)和(.*)$")
    public void refreshToken_Dp(String name,String path,String param){
        ApiAction.uri= getIp(name)+path;;
        JSONObject jsonObject = new JSONObject(param);
        jsonObject.put("refreshToken", StepLoansMain.refreshToken);
        ApiAction.param=jsonObject.toString();
    }

    //银行卡验证码请求数据准备
    @Given("^项目(.*)做bankcardverifycode_post请求数据准备(.*)和(.*)$")
    public void bankcardVerifycode_Dp(String name,String path,String param){
        ApiAction.uri= getIp(name)+path;;
        JSONObject jsonObject = new JSONObject(param);
        jsonObject.put("mobile", ApiConf.getProperty("wdloans_mobilecredit"));
        ApiAction.param=jsonObject.toString();
    }

    //新增用户信息详情:数据准备
    @Given("^项目(.*)做adduserdetails_post请求数据准备(.*)和(.*)$")
    public void adduserdetails_post请求数据准备_Dp(String name,String path,String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name)+path;
        JSONObject jsonObject=new JSONObject(param);
        jsonObject.put("mobile",ApiConf.getProperty("wdloans_mobile"));
        ApiAction.param=jsonObject.toString();
    }

    //新增银行卡addbankcard_post请求数据准备
    @Given("^项目(.*)做addbankcard_post请求数据准备(.*)和(.*)$")
    public void addbankcard_Dp(String name,String path,String param){
        ApiAction.uri= getIp(name)+path;;
        JSONObject jsonObject = new JSONObject(param);
        if (!jsonObject.has("issueBank")) {
            jsonObject.put("issueBank", StepLoansMain.issueBank);
        }
        if (!jsonObject.has("phoneNo")) {
            jsonObject.put("phoneNo", ApiConf.getProperty("wdloans_mobilecredit"));
        }
        jsonObject.put("verifyCode",StepLoansMain.verifyCode);
        if (!jsonObject.has("cardNumber")) {
            jsonObject.put("cardNumber", ApiConf.getProperty("wdloans_bankcardNo"));
        }
        ApiAction.param=jsonObject.toString();
    }

}
