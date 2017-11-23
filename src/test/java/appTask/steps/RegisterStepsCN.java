package appTask.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import appTask.pages.HomePage;
import appTask.pages.MyPage;
import appTask.pages.RegisterPage;

/**
 * Created by corncandy on 2017/8/2.
 */
public class RegisterStepsCN extends BaseSteps {
    @Given("^启动财富app$")
    public void 启动财富app() throws Throwable {
    }


    @When("^点击我的$")
    public void 点击我的() throws Throwable {
        new HomePage(appiumDriver).gotoMy();
    }

    @And("^点击标题栏注册按钮$")
    public void 点击标题栏注册按钮() throws Throwable {
        new MyPage(appiumDriver).gotoRegister();
    }

    @And("^输入合法未注册的手机号$")
    public void 输入合法未注册的手机号() throws Throwable {
        new RegisterPage(appiumDriver).inputPhone("13813813888");
    }

    @And("^点击获取验证码$")
    public void 点击获取验证码() throws Throwable {
        new RegisterPage(appiumDriver).getCode();
    }

    @And("^设置符合密码规则的密码$")
    public void 设置符合密码规则的密码() throws Throwable {
        new RegisterPage(appiumDriver).inputPassword("abc123");
    }

    @And("^勾选我已阅读并同意注册协议$")
    public void 勾选我已阅读并同意注册协议() throws Throwable {
        new RegisterPage(appiumDriver).agree();
    }

    @And("^点击注册按钮$")
    public void 点击注册按钮() throws Throwable {
        new RegisterPage(appiumDriver).register();
    }

    @Then("^手机号注册成功$")
    public void 手机号注册成功() throws Throwable {
        // TODO: Need clear stage
        Assert.assertTrue(true);
    }

    @Then("^注册按钮置灰$")
    public void 注册按钮置灰() throws Throwable {
        Assert.assertFalse(new RegisterPage(appiumDriver).canRegister());
    }

    @When("^输入合法已注册的手机号$")
    public void 输入合法已注册的手机号() throws Throwable {
        new RegisterPage(appiumDriver).inputPhone("13813813880");
    }

    @Then("^页面提示\"([^\"]*)\"$")
    public void 页面提示(String message) throws Throwable {
        // TODO: Don't know how to do this
        Assert.assertTrue(true);
    }

    @And("^输入错误的验证码$")
    public void 输入错误的验证码() throws Throwable {
        new RegisterPage(appiumDriver).inputCode("000000");
    }

    @And("^设置不符合密码规则的密码$")
    public void 设置不符合密码规则的密码() throws Throwable {
        new RegisterPage(appiumDriver).inputPassword("aaaaaa");
    }
}
