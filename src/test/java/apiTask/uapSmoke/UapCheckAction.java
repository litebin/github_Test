package apiTask.uapSmoke;

import baseFrame.apiUtils.UapParamPrepare;
import cucumber.api.java.en.Then;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/8/15.
 */
public class UapCheckAction extends UapParamPrepare{
    /**
     * @TODO Check string
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^header检查字符(.*)和(.*)$")
    public void cString(String key,String expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONObject json=jsonObject.getJSONObject("respHeader");
        String actual =json.getString(key);
        setCheckPoint(expect,actual);
        check();
    }
    /**
     * @TODO Check boolean
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^header检查布尔值(.*)和(.*)$")
    public void cBoolean(String key,boolean expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONObject json=jsonObject.getJSONObject("respHeader");
        boolean actual =json.getBoolean(key);
        setCheckPoint(expect,actual);
        check();
    }
    /**
     * @TODO Check int
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^header检查数值(.*)和(.*)$")
    public void cInt(String key,int expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONObject json=jsonObject.getJSONObject("respHeader");
        int actual =json.getInt(key);
        setCheckPoint(expect,actual);
        check();
    }



}
