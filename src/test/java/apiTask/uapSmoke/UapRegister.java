package apiTask.uapSmoke;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.UapParamPrepare;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/8/16.
 */
public class UapRegister extends UapParamPrepare {
    public static String sucmobile ;
    public static String illmobile;
    public static long PWID_Scene;
    /**
     * @TODO 准备正确的手机号
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做uapMobileSuc(.*)_post请求数据准备(.*)和(.*)$")
    public void setSucUapmobile(String name,String type,String path,String param) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        if (sucmobile==null) {
            sucmobile = "13" + getRandomNumberChar(9);
        }
        jsonObject.put("mobile",sucmobile);
        ApiAction.param=paramSet(type,jsonObject);
    }

    /**
     * @TODO 准备错误的手机号
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做uapMobileIll(.*)_post请求数据准备(.*)和(.*)$")
    public void setIllUapmobile(String name,String type,String path,String param) throws Throwable {

        // data prepare
        ApiAction.uri=getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        if (illmobile==null) {
            illmobile = getRandomNumberChar(7);
        }
        jsonObject.put("mobile",illmobile);
        ApiAction.param=paramSet(type,jsonObject);
    }


    /**
     * @TODO 准备用来跑场景的手机号
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做existMobile(.*)_post请求数据准备(.*)和(.*)$")
    public void registerExistMobile(String name,String type,String path,String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        jsonObject.put("mobile", ApiConf.getProperty("existMobile"));
        ApiAction.param=paramSet(type,jsonObject);
    }

    /**
     * @TODO 准备重新绑定的手机号
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做modifyMobile(.*)_post请求数据准备(.*)和(.*)$")
    public void reBindMobile(String name,String type,String path,String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        jsonObject.put("mobile", ApiConf.getProperty("modifyMobile"));
        ApiAction.param=paramSet(type,jsonObject);
    }
    /**
     * @TODO 赋值PWID
     *
     */
    @Then("^赋值PWID$")
    public void  evaluatePWID() throws Throwable {
        // 设置PWID
        JSONObject jsonObject =new JSONObject(response);
        PWID_Scene=jsonObject.getLong("PWID");
    }

    /**
     * @TODO 在设置header后的基础上，准备已注册手机号的PWID
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做Scene_PWID(.*)_post请求数据准备(.*)和(.*)$")
    public void sendPWID(String name,String type,String path,String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        jsonObject.put("PWID", PWID_Scene);
        ApiAction.param=paramSet(type,jsonObject);
    }


}
