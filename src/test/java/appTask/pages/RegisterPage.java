package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by corncandy on 2017/8/1.
 */
public class RegisterPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(id = "phone_number")
    private WebElement phoneInput;

    @FindBy(id = "phone_delete")
    private WebElement phoneClear;

    @FindBy(id = "captcha")
    private WebElement codeInput;

    @FindBy(id = "captcha_fetch")
    private WebElement codeButton;

    @FindBy(id = "password_new")
    private WebElement passwordInput;

    @FindBy(id = "password_new_delete")
    private WebElement passwordClear;

    @FindBy(id = "agreement_content_cb")
    private WebElement agreementCheck;

    @FindBy(id = "register")
    private WebElement registerButton;

    public RegisterPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void clearPhone() {
        phoneClear.click();
    }

    public void inputPhone(String number) {
        phoneInput.sendKeys(number);
    }

    public void getCode() {
        codeButton.click();
    }

    public void agree() {
        agreementCheck.click();
    }

    public void inputPassword(String password) {
        passwordInput.sendKeys(password);
    }

    public void register() {
        registerButton.click();
    }

    public boolean canRegister() {
        return registerButton.isEnabled();
    }

    public void inputCode(String code) {
        codeInput.sendKeys(code);
    }

    public boolean toastShown(String message) {
        waitForElementToBeVisible(appiumDriver.findElementByXPath("//android.widget.TextView=[@text='" + message + "']"));
        return appiumDriver.findElementByXPath("//android.widget.TextView=[@text='" + message + "']").isDisplayed();
    }

    public boolean isShown() {
        return registerButton.isDisplayed();
    }
}
