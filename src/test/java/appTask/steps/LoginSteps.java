package appTask.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import appTask.pages.HomePage;
import appTask.pages.LoginPage;
import appTask.pages.MyPage;

/**
 * Created by corncandy on 2017/8/2.
 */
public class LoginSteps extends BaseSteps {
    @When("^I goto my page$")
    public void iGotoMyPage() throws Throwable {
        new HomePage(appiumDriver).gotoMy();
    }

    @And("^I input invalid phone$")
    public void iInputInvalidPhone() throws Throwable {
        new LoginPage(appiumDriver).inputPhone("13913913990");
    }

    @And("^I input valid password$")
    public void iInputValidPassword() throws Throwable {
        new LoginPage(appiumDriver).inputPassword("abc123");
    }

    @Then("^App shows \"([^\"]*)\"$")
    public void appShows(String arg0) throws Throwable {
        Assert.assertTrue(true);
    }

    @And("^I input valid phone$")
    public void iInputValidPhone() throws Throwable {
        new LoginPage(appiumDriver).inputPhone("13813813880");
    }

    @And("^I input invalid password$")
    public void iInputInvalidPassword() throws Throwable {
        new LoginPage(appiumDriver).inputPassword("aaaaaa");
    }

    @And("^I click login button$")
    public void iClickLoginButton() throws Throwable {
        new LoginPage(appiumDriver).clickLogin();
    }

    @Then("^I am logged in$")
    public void iAmLoggedIn() throws Throwable {
        new HomePage(appiumDriver).gotoMy();
        Assert.assertTrue(new MyPage(appiumDriver).isShown());
    }
}
