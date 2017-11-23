package apiTask.uapSmoke;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;

import baseFrame.apiUtils.UapParamPrepare;
import cucumber.api.java.en.Given;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/8/17.
 */
public class UapHeaderAction extends UapParamPrepare {

    /**
     * @TODO uap post请求数据准备,设置header
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做accessToken(.*)_post请求数据准备(.*)和(.*)$")
    public void uapPostDp(String name,String type,String path,String param) throws Throwable {
        //data prepare
        ApiAction.uri= getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        ApiAction.param=paramSet(type,jsonObject);
    }

    /**
     * @TODO 在设置header后的基础上，准备已注册手机号的PWID
     * @parameter @param uri "链接"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做PWID(.*)_post请求数据准备(.*)和(.*)$")
    public void sendPWID(String name,String type,String path,String param) throws Throwable {
        // send uri and body
        ApiAction.uri = getIp(name)+path;
        JSONObject jsonObject =new JSONObject(param);
        jsonObject.put("PWID", ApiConf.getProperty("PWID"));
        ApiAction.param=paramSet(type,jsonObject);
    }

}
