package apiTask.uapSmoke;

import baseFrame.apiUtils.UapParamPrepare;
import cucumber.api.java.en.Then;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/8/22.
 */
public class MemberCheckAction extends UapParamPrepare{
    /**
     * @TODO Check string
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^member检查字符(.*)和(.*)$")
    public void cString(String key,String expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONObject json=jsonObject.getJSONObject("member");
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
    @Then("^member检查布尔值(.*)和(.*)$")
    public void cBoolean(String key,boolean expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONObject json=jsonObject.getJSONObject("member");
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
    @Then("^member检查数值(.*)和(.*)$")
    public void cInt(String key,int expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONObject json=jsonObject.getJSONObject("member");
        int actual =json.getInt(key);
        setCheckPoint(expect,actual);
        check();
    }

    /**
     * @TODO Check length
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^member检查long长度(.*)和(.*)$")
    public void cLongLength(String key,int expect) throws Throwable {
        // check response
        JSONObject json =new JSONObject(response);
        JSONObject jsonObject=json.getJSONObject("member");
        long v=jsonObject.getLong(key);
        int actual = String.valueOf(v).length();
        setCheckPoint(expect,actual);
        check();
    }


}
