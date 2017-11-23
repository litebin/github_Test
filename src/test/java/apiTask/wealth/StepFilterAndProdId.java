package apiTask.wealth;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Created by yaolei on 2017/7/31.
 */
public class StepFilterAndProdId extends RequestUtils {
    public static String filterValue ;
    public static int productId ;
    public static int lowLimit ;
    /**
     * @TODO 提取filtervalue
     *
     */
    @When("^filterValue_执行get请求$")
    public void getFilterValue( ) throws Throwable {
        // get filterValue
        response = doGet();
        JSONArray array = new JSONArray(response);
        int i=0;
        while ( i>10){
            i++;
            array = new JSONArray(response);
        }
            JSONObject ob = (JSONObject) array.get(0);
            filterValue = ob.getString("filterValue");
    }

    /**
     *
     * @TODO 调用filtervalue
     * @parameter @path"请求的path"
     *
     */
    @Given("^项目(.*)做filterValue_get请求数据准备(.*)$")
    public void filterValue_Dp(String name,String path) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path+"&filter="+filterValue;
    }

    /**
     *
     * @TODO 提取productid
     *
     */
    @When("^productid_执行get请求$")
    public void productid_excGet( ) throws Throwable {
        // Express the Regexp above with  the code you wish you had
        response=doGet( );
        JSONArray array = new JSONArray(response);
        int i=0;
        while ( i>10){
            i++;
            array = new JSONArray(response);
        }
        JSONObject ob = (JSONObject) array.get(0);
        productId=ob.getInt("productId");
    }

    /**
     *
     * @TODO 调用productid
     * @parameter @path"请求的path"
     *
     */
    @Given("^项目(.*)做productid_get请求数据准备(.*)$")
    public void product_Dp(String name,String path) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path+"?id="+productId;
    }


    /**
     *
     * @TODO 提取定期产品productid
     *
     */
    @When("^提取定期产品id和限额执行get请求$")
    public void regularProductidGet( ) throws Throwable {
        // Express the Regexp above with the code you wish you had
        response=doGet();
        JSONArray array = new JSONArray(response);
        int i=0;
        while ( i>10){
            i++;
            array = new JSONArray(response);
        }
        JSONObject ob = (JSONObject) array.get(0);
        productId=ob.getInt("productId");
        lowLimit=ob.getInt("lowLimit");
    }

    /**
     *
     * @TODO 调用定期产品productid
     * @parameter @path"请求的path"
     *
     */
    @Given("^项目(.*)做regularproductid_get请求数据准备(.*)$")
    public void regularproduct_Dp(String name,String path) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path+productId+"&inviteCode=12345";
    }

    /**
     *
     * @TODO 申购定期产品数据准备
     * @parameter @path "请求的path"
     * @parameter @param " body"
     *
     */
    @Given("^项目(.*)做申购定期产品post请求数据准备(.*)和(.*)$")
    public void applyorder_Dp(String name,String path,String param){
        ApiAction.uri=getIp(name)+path;
        JSONObject jsonObject=new JSONObject(param);
        jsonObject.put("productId",productId);
        jsonObject.put("amount",lowLimit);
        ApiAction.param=jsonObject.toString();
    }
}
