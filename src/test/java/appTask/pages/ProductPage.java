package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by corncandy on 2017/8/1.
 */
public class ProductPage extends BasePage {
    AppiumDriver appiumDriver;

    public ProductPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void buyProduct() throws Throwable {
        Thread.sleep(2000);
        Thread.sleep(2000);
        Thread.sleep(2000);
        Thread.sleep(2000);
        changeDriverContextToNative();

        Thread.sleep(2000);
        changeDriverContextToWeb();
        changeDriverContextToNative();
    }

    public boolean isShown() throws Throwable {
        boolean isShown = false;
        Thread.sleep(3000);
        changeDriverContextToWeb();
        isShown = appiumDriver.findElementByCssSelector(".buy-btn span").isDisplayed();
        changeDriverContextToNative();
        return isShown;
    }

    public void clickBuy() {
        changeDriverContextToWeb();
        appiumDriver.findElementByCssSelector(".buy-btn span").click();
        changeDriverContextToNative();
    }

    public void inputAmount(int amount) {
        changeDriverContextToWeb();
        appiumDriver.findElementById("buyAmount").sendKeys(Integer.toString(amount));
        appiumDriver.hideKeyboard();
        changeDriverContextToNative();
    }

    public void agreeTerm() {
        changeDriverContextToWeb();
        appiumDriver.findElementByClassName("agreement-checkbox").click();
        changeDriverContextToNative();
    }

    public void clickSubmit() {
        changeDriverContextToWeb();
        appiumDriver.findElementById("tooltipbutton").click();
        changeDriverContextToNative();
    }

    public void inputPassword() {
        appiumDriver.findElementByXPath("//android.widget.TextView[@text='1']").click();
        appiumDriver.findElementByXPath("//android.widget.TextView[@text='1']").click();
        appiumDriver.findElementByXPath("//android.widget.TextView[@text='2']").click();
        appiumDriver.findElementByXPath("//android.widget.TextView[@text='2']").click();
        appiumDriver.findElementByXPath("//android.widget.TextView[@text='3']").click();
        appiumDriver.findElementByXPath("//android.widget.TextView[@text='3']").click();
    }

    public boolean isSuccess() throws InterruptedException {
        boolean success = false;
        changeDriverContextToWeb();
        Thread.sleep(3000);
        success = appiumDriver.findElementByClassName("result-main").getText().equals("支付成功");
        changeDriverContextToNative();
        return success;
    }
}
