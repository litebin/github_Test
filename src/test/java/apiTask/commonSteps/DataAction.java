package apiTask.commonSteps;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.*;

/**
 * Created by yaolei on 2017/7/24.
 */
public class DataAction extends RequestUtils {

    /**
     * @TODO 单接口post请求数据准备
     * @parameter @param path "请求的path"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做post请求数据准备(.*)和(.*)$")
    public void postDp(String name,String path,String param) throws Throwable {
        //data prepare
        ApiAction.uri=getIp(name)+path;
        ApiAction.param=param;
    }
    /**
     * @TODO 单接口get请求数据准备
     * @parameter @param path "请求的path"
     *
     */
    @Given("^项目(.*)做get请求数据准备(.*)$")
    public void getDp(String name,String path) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path;
    }
    /**
     * @TODO 单接口delete请求数据准备
     * @parameter @param uri "请求的path"
     *
     */
    @Given("^项目(.*)做delete请求数据准备(.*)$")
    public void deleteDp(String name,String path) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path;
    }

    /**
     * @TODO 单接口put请求数据准备
     * @parameter @param path "请求的path"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做put请求数据准备(.*)和(.*)$")
    public void putDp(String name,String path,String param) throws Throwable {
        //data prepare
        ApiAction.uri=getIp(name)+path;
        ApiAction.param=param;

    }

}
