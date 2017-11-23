package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by corncandy on 2017/8/1.
 */
public class LoginPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(id = "phone_number")
    private WebElement phoneInput;

    @FindBy(id = "phone_delete")
    private WebElement phoneClear;

    @FindBy(id = "password")
    private WebElement passwordInput;

    @FindBy(id = "password_delete")
    private WebElement passwordClear;

    @FindBy(id = "login")
    private WebElement loginButton;

    @FindBy(id = "common_head_right")
    private WebElement registerButton;

    public LoginPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void loginWith(String mobile, String password) {
        phoneInput.clear();
        phoneInput.sendKeys(mobile);
        passwordInput.sendKeys(password);
        loginButton.click();
    }

    public void autoLogin() {
        phoneInput.clear();
        phoneInput.sendKeys("13813813880");
        passwordInput.sendKeys("abc123");
        loginButton.click();
    }

    public void inputPhone(String number) {
        phoneInput.clear();
        phoneInput.sendKeys(number);
    }

    public void inputPassword(String password) {
        passwordInput.clear();
        passwordInput.sendKeys(password);
    }

    public void clickLogin() {
        loginButton.click();
    }

    public void register() {
        registerButton.click();
    }
}
