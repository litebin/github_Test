package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by corncandy on 2017/8/1.
 */
public class GesturePage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(xpath = "//android.widget.TextView[@text='请绘制解锁图案']")
    private WebElement tipText;

    @FindBy(id = "common_head_right")
    private WebElement skipButton;

    public GesturePage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void skip() {
        skipButton.click();
    }

    public boolean isShown() {
        return tipText.isDisplayed();
    }
}
