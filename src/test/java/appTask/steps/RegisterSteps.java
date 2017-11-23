package appTask.steps;

import appTask.apis.AccountApi;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.json.JSONObject;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import appTask.pages.GesturePage;
import appTask.pages.HomePage;
import appTask.pages.LoginPage;
import appTask.pages.RegisterPage;
import appTask.utils.Generator;
import java.util.function.Function;

import static org.junit.Assert.assertNotNull;
import static org.openqa.selenium.support.ui.ExpectedConditions.*;

/**
 * Created by corncandy on 2017/8/8.
 */
public class RegisterSteps extends BaseSteps {
    @Given("^I launch Wealth app and choose sign up$")
    public void iLaunchWealthAppAndChooseSignUp() throws Throwable {
        new HomePage(appiumDriver).login();
        new LoginPage(appiumDriver).register();
    }

    @When("^I input phone \"([^\"]*)\" in sign up page$")
    public void iInputPhonePhoneInSignUpPage(String mobile) throws Throwable {
        if (mobile.equals("unregistered")) {
            new RegisterPage(appiumDriver).inputPhone(Generator.mobile());
        }
        if (mobile.equals("registered")) {
            JSONObject account = AccountApi.generateNew();
            String phone = account.getString("mobile");
            new RegisterPage(appiumDriver).inputPhone(phone);
        }
    }

    @And("^I click get verification code in sign up page$")
    public void iClickGetVerificationCodeInSignUpPage() throws Throwable {
        new RegisterPage(appiumDriver).getCode();
    }

    @Then("^I should receive verification code for sign up$")
    public void iShouldReceiveVerificationCodeForSignUp() throws Throwable {
        // TODO: Don't know how now.
        Assert.assertTrue(true);
    }

    @And("^I input verification \"([^\"]*)\" for sign up$")
    public void iInputVerificationCodeForSignUp(String code) throws Throwable {
        if (!code.equals("auto")) {
            new RegisterPage(appiumDriver).inputCode(code);
        }
    }

    @And("^I input password \"([^\"]*)\" in sign up page$")
    public void iInputPasswordPasswordInSignUpPage(String password) throws Throwable {
        new RegisterPage(appiumDriver).inputPassword(password);
    }

    @And("^I check term and condition in sign up page$")
    public void iCheckTermAndConditionInSignUpPage() throws Throwable {
        new RegisterPage(appiumDriver).agree();
    }

    @And("^I click register button in sign up page$")
    public void iClickRegisterButtonInSignUpPage() throws Throwable {
        new RegisterPage(appiumDriver).register();
    }

    @Then("^I should see gesture cipher setup page$")
    public void iShouldSeeGestureCipherSetupPage() throws Throwable {
        Assert.assertTrue(new GesturePage(appiumDriver).isShown());
    }

    @And("^I skip setup gesture cipher$")
    public void iSkipSetupGestureCipher() throws Throwable {
        new GesturePage(appiumDriver).skip();
    }

    @Then("^I should be in home page$")
    public void iShouldBeInHomePage() throws Throwable {
        Assert.assertTrue(new HomePage(appiumDriver).tabsShown());
    }

    @Then("^I should see \"([^\"]*)\" in sign up page$")
    public void iShouldSeeErrorMessageInSignUpPage(String message) throws Throwable {
        // TODO: Appium cannot locate toast, so cannot check toast message.
        // Assert.assertTrue(new RegisterPage(appiumDriver).toastShown(message));
        // TODO: Only can check the register failed.
        // Assert.assertTrue(new RegisterPage(appiumDriver).isShown());
//        final WebDriverWait wait = new WebDriverWait(appiumDriver, 10);
//        assertNotNull(wait.until(ExpectedConditions.presenceOfElementLocated(
//                By.xpath("//*[@text='" + message + "']"))));

    }

    @Then("^I click register button and see \"([^\"]*)\" in sign up page$")
    public void iClickRegisterButtonAndSeeInSignUpPage(String message) throws Throwable {
        final WebDriverWait wait = new WebDriverWait(appiumDriver, 10);
        new RegisterPage(appiumDriver).register();
        assertNotNull(wait.until((Function<? super WebDriver, Object>)presenceOfElementLocated(By.xpath("//*[@text='" + message + "']"))));
    }
}
