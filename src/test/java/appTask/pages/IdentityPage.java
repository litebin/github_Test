package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by corncandy on 2017/8/1.
 */
public class IdentityPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(id = "tv_bind_bank")
    private WebElement identityButton;

    @FindBy(xpath = "//android.widget.TextView[@text='您已通过身份验证']")
    private WebElement identitySuccess;

    public IdentityPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void gotoIdentity() {
        identityButton.click();
    }

    public void inputIdentity() throws InterruptedException {
        changeDriverContextToWeb();
        // TODO: After swith context, how to wait for element
        Thread.sleep(2000);
        appiumDriver.findElement(By.id("realName")).sendKeys("李晓明");
        appiumDriver.findElement(By.id("idCard")).sendKeys("310115199901017090");
        appiumDriver.findElement(By.id("bankcardNo")).sendKeys("6228480402564890018");
        waitForElementToBeVisible(appiumDriver.findElement(By.id("phoneNo")));
        appiumDriver.findElement(By.id("phoneNo")).sendKeys("13813813880");
        appiumDriver.findElement(By.className("verify-code")).click();
        // TODO: This verify code is not true!
        appiumDriver.findElement(By.id("verifyCode")).sendKeys("123456");
        changeDriverContextToNative();
    }

    public void clickAdd() {
        changeDriverContextToWeb();
        appiumDriver.findElement(By.id("btn")).click();
        changeDriverContextToNative();
    }

    public boolean identityShown() {
        return identitySuccess.isDisplayed();
    }
}
