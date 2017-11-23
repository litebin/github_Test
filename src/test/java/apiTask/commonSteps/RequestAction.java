package apiTask.commonSteps;
import baseFrame.apiUtils.RequestUtils;
import cucumber.api.java.en.When;

/**
 * Created by yaolei on 2017/7/24.
 */
public class RequestAction extends RequestUtils{
    /**
     * @TODO 执行单接口post请求
     *
     */
    @When("^执行post请求$")
    public void excPost() throws Throwable {
        // execute request
        response= doPost();

    }
    /**
     * @TODO 执行单接口get请求
     *
     */
    @When("^执行get请求$")
    public void excGet( ) throws Throwable {
        // execute request
        response= doGet();
    }
    /**
     * @TODO 执行单接口delete请求
     *
     */
    @When("^执行delete请求$")
    public void excDelete( ) throws Throwable {
        // execute request
        response = doDelete();

    }

    /**
     * @TODO 执行单接口put请求
     *
     */
    @When("^执行put请求$")
    public void excPut() throws Throwable {
        // execute request
        response= doPut();

    }
}
