package apiTask.commonSteps;

import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.Then;
import org.json.JSONObject;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by yaolei on 2017/7/24.
 */
public class CheckAction extends RequestUtils {
    /**
     * @TODO Check string
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应字符类型中(.*)的值为(.*)$")
    public void cString(String key,String expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        String actual =jsonObject.getString(key);
        setCheckPoint(expect,actual);
        check();
    }
    /**
     * @TODO Check boolean
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应布尔值类型中(.*)的值为(.*)$")
    public void cBoolean(String key,boolean expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        boolean actual =jsonObject.getBoolean(key);
        setCheckPoint(expect,actual);
        check();
    }
    /**
     * @TODO Check int
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应int类型中(.*)的值为(.*)$")
    public void cInt(String key,int expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        int actual =jsonObject.getInt(key);
        setCheckPoint(expect,actual);
        check();
    }
    /**
     * @TODO Check long
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应long类型中(.*)的值为(.*)$")
    public void clong(String key,long expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        long actual =jsonObject.getLong(key);
        setCheckPoint(expect,actual);
        check();
    }
    /**
     * @TODO Check length
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应long类型中(.*)的长度为(.*)$")
    public void cLongLength(String key,int expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        long v=jsonObject.getLong(key);
        int actual = String.valueOf(v).length();
        setCheckPoint(expect,actual);
        check();
    }

    /**
     * @TODO Check length
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应int类型中(.*)的长度为(.*)$")
    public void cIntLength(String key,int expect) throws Throwable {
        // check response
        JSONObject jsonObject =new JSONObject(response);
        int v=jsonObject.getInt(key);
        int actual = String.valueOf(v).length();
        setCheckPoint(expect,actual);
        check();
    }


    /**
     * @TODO Check null
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应中(.*)的值为null$")
    public void cIsNull(String key) throws Throwable {
        // check response
        String actual;
        JSONObject jsonObject =new JSONObject(response);
        boolean a = jsonObject.isNull(key);
        if (a==true){
            actual="yes";
        }
        else {
            actual="no";
        }
        setCheckPoint("yes",actual);
        check();
    }
    /**
     * @TODO Check null
     * @parameter @param key "被检查值的key"
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口响应中(.*)的值不为null$")
    public void cNotNull(String key) throws Throwable {
        // check response
        String actual;
        JSONObject jsonObject =new JSONObject(response);
        boolean a = jsonObject.isNull(key);
        if (a==true){
            actual="yes";
        }
        else {
            actual="no";
        }
        setCheckPoint("no",actual);
        check();
    }
    /**
     * @TODO Check status code
     * @parameter @param expected "预期的value"
     *
     */
    @Then("^检查接口返回状态码status是(.*)$")
    public void cStatus(int expect) throws Throwable {
        // check response
        setCheckPoint(expect,RequestUtils.statuCode);
        check();
    }

    @Then("^检查接口响应字段中是否包含(.*)$")
    public void cRegular(String regular){
        Pattern p = Pattern.compile(regular);
       Matcher m = p.matcher(response);
       Boolean actual =m.find();
       setCheckPoint(true,actual);
        check();
    }

}
