package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * Created by corncandy on 2017/8/1.
 */
public class ProblemPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(className = "question-category--current")
    private WebElement currentTab;

    @FindBy(css = "#current .question-list-item")
    private List<WebElement> questionList;

    public ProblemPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        changeDriverContextToWeb();
        PageFactory.initElements(appiumDriver, this);
    }

    public void gotoPeriod() {
        currentTab.click();
//        appiumDriver.findElement(By.className("question-category--current")).click();
//        appiumDriver.findElementByAccessibilityId("活期产品").click();
    }

    public void gotoWhen() {
        questionList.get(0).click();
        questionList.get(0).click();
        questionList.get(1).click();
        questionList.get(1).click();
//        appiumDriver.findElementByAccessibilityId("购买活期产品什么时候起息？").click();
//        appiumDriver.findElementByAccessibilityId("购买活期产品什么时候起息？").click();
    }

    public void checkWhen() {
        Assert.assertTrue(questionList.get(0).isDisplayed());
//        changeDriverContextToNative();
//        appiumDriver.findElement(By.id("funcbar_back_wrapper")).click();
    }
}
