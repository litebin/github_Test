package appTask.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import appTask.pages.HomePage;
import appTask.pages.LoginPage;

/**
 * Created by corncandy on 2017/8/2.
 */
public class HomeSteps extends BaseSteps {
    @Given("^I launch Wealth app and logged in$")
    public void iLaunchWealthAppAndLoggedIn() throws Throwable {
        new HomePage(appiumDriver).login();
        new LoginPage(appiumDriver).autoLogin();
        Thread.sleep(2000);
    }

    @Then("^Home page should show banners$")
    public void homePageShouldShowBanners() throws Throwable {
        Assert.assertTrue(new HomePage(appiumDriver).bannerShown());
    }

    @And("^Home page should show product list$")
    public void homePageShouldShowProductList() throws Throwable {
        Assert.assertTrue(new HomePage(appiumDriver).getProductList().size() > 0);
    }

    @And("^Home page should show three tabs$")
    public void homePageShouldShowThreeTabs() throws Throwable {
        Assert.assertTrue(new HomePage(appiumDriver).tabsShown());
    }

    @Given("^I launch Wealth app$")
    public void iLaunchWealthApp() throws Throwable {
    }
}
