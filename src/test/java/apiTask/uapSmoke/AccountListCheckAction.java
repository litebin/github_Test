package apiTask.uapSmoke;

import baseFrame.apiUtils.UapParamPrepare;
import cucumber.api.java.en.Then;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/8/22.
 */
public class AccountListCheckAction extends UapParamPrepare{

    /**
     * @TODO Check int
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^accountList检查数值(.*)和(.*)$")
    public void cInt(String key,int expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONArray array=jsonObject.getJSONArray("loginAccountList");
        JSONObject jsonObject1 = (JSONObject) array.get(0);
        int actual =jsonObject1.getInt(key);
        setCheckPoint(expect,actual);
        check();
    }

    /**
     * @TODO Check int
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^accountList检查long数值(.*)和(.*)$")
    public void cLong(String key,long expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONArray array=jsonObject.getJSONArray("loginAccountList");
        JSONObject jsonObject1 = (JSONObject) array.get(0);
        long actual =jsonObject1.getLong(key);
        setCheckPoint(expect,actual);
        check();
    }

    /**
     * @TODO Check string
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^accountList检查字符(.*)和(.*)$")
    public void cString(String key,String expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONArray array=jsonObject.getJSONArray("loginAccountList");
        JSONObject jsonObject1 = (JSONObject) array.get(0);
        String actual =jsonObject1.getString(key);
        setCheckPoint(expect,actual);
        check();
    }

    /**
     * @TODO Check boolean
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^accountList检查布尔值(.*)和(.*)$")
    public void cBoolean(String key,Boolean expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        JSONArray array=jsonObject.getJSONArray("loginAccountList");
        JSONObject jsonObject1 = (JSONObject) array.get(0);
        Boolean actual =jsonObject1.getBoolean(key);
        setCheckPoint(expect,actual);
        check();
    }
}
