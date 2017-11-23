package apiTask.wealth;

import apiTask.commonSteps.RequestAction;
import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.When;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Created by yaolei on 2017/9/19.
 */
public class StepWealthCoupon extends RequestUtils{

public static int couponId;
public static int issueId;
public static int userCouponId;
    /**
     *
     * @TODO 提取优惠券couponId
     *
     */
    @When("^couponId_执行get请求$")
    public void couponIdGet( ) throws Throwable {
        response=doGet();
        JSONObject jsonObject=new JSONObject(response);
        JSONArray array = jsonObject.getJSONArray("list");
        Thread.sleep(300);
        JSONObject ob = (JSONObject) array.get(0);
        couponId=ob.getInt("id");
    }

    /**
     *
     * @TODO 调用优惠券编号couponId
     *
     */
    @When("^项目(.*)做couponId_put请求数据准备(.*)和(.*)$")
    public void putCouponIdSet(String name,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path+"/"+couponId;
        ApiAction.param=param;
    }

    @When("^项目(.*)做couponId_get请求数据准备(.*)$")
    public void getCouponIdSet(String name,String path) throws Throwable {
        ApiAction.uri=getIp(name)+path+"/"+couponId;
    }
    @When("^项目(.*)做couponId_delete请求数据准备(.*)$")
    public void delCouponIdSet(String name,String path) throws Throwable {
        ApiAction.uri=getIp(name)+path+"/"+couponId;
    }

    @When("^项目(.*)做couponId_post请求数据准备(.*)和(.*)$")
    public void postCouponIdSet(String name,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject jsonObject=new JSONObject(param);
        jsonObject.put("couponId",couponId);
        ApiAction.param=jsonObject.toString();
    }


    /**
     *
     * @TODO 提取优惠券发放批次号issueId
     *
     */
    @When("^issueId_执行get请求$")
    public void issueIdGet( ) throws Throwable {
        response=doGet();
        JSONObject jsonObject=new JSONObject(response);
        JSONArray array = jsonObject.getJSONArray("list");
        Thread.sleep(300);
        JSONObject ob = (JSONObject) array.get(0);
        issueId=ob.getInt("issueId");
    }

    /**
     *
     * @TODO 调用优惠券发放批次号issueId
     *
     */
    @When("^项目(.*)做issueId_get请求数据准备(.*)$")
    public void putIssueIdSet(String name,String path) throws Throwable {
        ApiAction.uri=getIp(name)+path+issueId;
    }
    @When("^项目(.*)做issueId_put请求数据准备(.*)和(.*)$")
    public void putIssueIdSet(String name,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path+"/"+issueId;
        ApiAction.param=param;
    }


    /**
     *
     * @TODO 提取用户优惠券id
     *
     */
    @When("^userCouponId_执行get请求$")
    public void userCouponIdGet( ) throws Throwable {
        response=doGet();
        JSONArray array = new JSONArray(response);
        int i=array.length();
        JSONObject ob = (JSONObject) array.get(i-1);
        userCouponId=ob.getInt("userCouponId");
        System.out.println(userCouponId);
    }

    /**
     *
     * @TODO 调用用户优惠券id
     *
     */
    @When("^项目(.*)做userCouponId_get请求数据准备(.*)$")
    public void getUserCouponIdSet(String name,String path) throws Throwable {
        ApiAction.uri=getIp(name)+path+"/"+userCouponId;
    }
    @When("^项目(.*)做userCouponId_put请求数据准备(.*)和(.*)$")
    public void putUserCouponIdSet(String name,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path+"/"+userCouponId;
        ApiAction.param=param;
    }

}
