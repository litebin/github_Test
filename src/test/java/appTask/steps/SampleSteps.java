package appTask.steps;

import appTask.apis.AccountApi;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.json.JSONObject;
import org.junit.Assert;
import appTask.pages.HomePage;
import appTask.pages.LoginPage;
import appTask.pages.ProductPage;

/**
 * Created by corncandy on 2017/8/7.
 */
public class SampleSteps extends BaseSteps {
    @Given("^New user is registered$")
    public void newUserIsRegistered() throws Throwable {
        JSONObject account = AccountApi.generateNew();
        String mobile = account.getString("mobile");
        String password = account.getString("password");

        new HomePage(appiumDriver).login();
        new LoginPage(appiumDriver).loginWith(mobile, password);
        Thread.sleep(2000);
        new HomePage(appiumDriver).newComerBuy();
        new ProductPage(appiumDriver).buyProduct();
        Thread.sleep(5000);
    }

    @When("^New user logs in$")
    public void newUserLogsIn() throws Throwable {
        Assert.assertTrue(true);
    }

    @Then("^Home page is shown$")
    public void homePageIsShown() throws Throwable {
        Assert.assertTrue(true);
    }
}
