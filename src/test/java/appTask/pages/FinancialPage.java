package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * Created by corncandy on 2017/8/1.
 */
public class FinancialPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(xpath = "//android.widget.TextView[@text='私募']")
    private WebElement privatePlacement;

    @FindBy(xpath = "//android.widget.TextView[@text='百年人寿']")
    private WebElement aeonLife;

    @FindBy(xpath = "//android.widget.TextView[@text='海外地产']")
    private WebElement overseaProperty;

    @FindBy(id = "list")
    private List<WebElement> productList;

    public FinancialPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public List<WebElement> getProductList() {
        return productList;
    }

    public void gotoPrivatePlacement() {
        privatePlacement.click();
    }

    public boolean privatePlacementShown() {
        return appiumDriver.findElementByAccessibilityId("敬请期待").isDisplayed();
    }

    public void gotoAeonLife() {
        aeonLife.click();
    }

    public boolean aeonLifeShown() {
        return appiumDriver.findElementByAccessibilityId("敬请期待").isDisplayed();
    }

    public void gotoOverseaProperty() {
        overseaProperty.click();
    }

    public boolean overseaPropertyShown() {
        appiumDriver.findElementByAccessibilityId("伦敦ONE项目").click();

        return appiumDriver.findElementByAccessibilityId("伦敦房产市场常年保持稳定强劲的增长态势，始终是全球客户安全的长期投资渠道。").isDisplayed();
    }
}
