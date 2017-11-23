package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * Created by corncandy on 2017/8/1.
 */
public class AssessmentPage extends BasePage {
    AppiumDriver appiumDriver;

    public AssessmentPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void startAssessment() throws Throwable {
        changeDriverContextToWeb();
        Thread.sleep(2000);
        appiumDriver.findElementByClassName("ui-btn-primary").click();
        changeDriverContextToNative();
    }

    public void answerAll() throws Throwable {
        changeDriverContextToWeb();
        for (int i = 0; i < 11; i++) {
            Thread.sleep(2000);
            // waitForElementToBeVisible(appiumDriver.findElementByClassName("ra-options"));
            List<WebElement> answers = appiumDriver.findElements(By.cssSelector("div.ng-scope:not(.ng-hide)>ul>.ra-options"));
            answers.get(0).click();
        }
        appiumDriver.findElementByClassName("ui-btn-primary").click();
        changeDriverContextToNative();
    }

    public boolean isShown() throws InterruptedException {
        boolean result = false;
        changeDriverContextToWeb();
        Thread.sleep(2000);
        result = appiumDriver.findElementByClassName("risk-result-page").isDisplayed();
        changeDriverContextToNative();
        return result;
    }
}
