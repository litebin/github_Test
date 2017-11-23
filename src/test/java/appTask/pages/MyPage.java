package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by corncandy on 2017/8/1.
 */
public class MyPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(id = "common_head_right")
    private WebElement registerButton;

    @FindBy(id = "ll_mine_bg")
    private WebElement myTitle;

    @FindBy(id = "layout_account_settings")
    private WebElement settingButton;

    @FindBy(id = "layout_user_info")
    private WebElement identityItem;

    @FindBy(id = "layout_risk_test")
    private WebElement assessmentItem;

    public MyPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void gotoProblem() {
        scrollDownToEle(By.id("problem"));
        appiumDriver.findElement(By.id("problem")).click();
    }

    public void gotoRegister() {
        registerButton.click();
    }

    public boolean isShown() {
        return myTitle.isDisplayed();
    }

    public void gotoSetting() {
        settingButton.click();
    }

    public void gotoIdentity() {
        identityItem.click();
    }

    public void gotoAssessment() {
        assessmentItem.click();
    }
}
