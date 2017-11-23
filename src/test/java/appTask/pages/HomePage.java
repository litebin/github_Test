package appTask.pages;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * Created by corncandy on 2017/8/1.
 */
public class HomePage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(id = "tv_profit_rate")
    private WebElement newComeSpecial;

    @FindBy(id = "common_head_right")
    private WebElement loginButton;

    @FindBy(id = "view_pager")
    private WebElement banner;

    @FindBy(id = "layout_item")
    private List<WebElement> productList;

    @FindBy(id = "btn_buy")
    private WebElement newComerBuyButton;

    @FindBy(id = "home")
    private WebElement homeButton;

    @FindBy(id = "finance")
    private WebElement financeButton;

    @FindBy(id = "mine")
    private WebElement myButton;

    public HomePage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void login() {
        loginButton.click();
    }

    public void gotoMy() {
        waitForElementToBeVisible(myButton);
        myButton.click();
    }

    public void gotoFinance() {
        financeButton.click();
    }

    public boolean bannerShown() {
        return banner.isDisplayed();
    }

    public List<WebElement> getProductList() {
        return productList;
    }

    public boolean tabsShown() {
        return homeButton.isDisplayed() && financeButton.isDisplayed() && myButton.isDisplayed();
    }

    public void newComerBuy() {
        newComerBuyButton.click();
    }

    public boolean newComerSpecialShown() {
        // TODO: Need app give id for this
        return newComeSpecial.isDisplayed();
    }

    public void gotoHome() {
        homeButton.click();
    }

    public boolean isProductShown(List<String> product) {
        boolean productFound = false;
        int i = 0;
        String productName = product.get(0);
        String profitRate = product.get(1);
        String profitTag = product.get(2);
        String period = product.get(3);
        String startAmount = product.get(4);

        while(!productFound && i < 12) {
            List<MobileElement> products = appiumDriver.findElements(By.id("layout_item"));

            for (MobileElement item : products) {
                List<MobileElement> titles = item.findElements(By.id("tv_product_name"));

                if (titles.size() > 0 && titles.get(0).getText().equals(productName)) {
                    Assert.assertTrue(item.findElement(By.id("tv_profit_rate")).getText().equals(profitRate));
                    Assert.assertTrue(item.findElement(By.id("tv_profit_rate_tag")).getText().equals(profitTag));
                    Assert.assertTrue(item.findElement(By.id("tv_right_bottom")).getText().equals(period));
                    Assert.assertTrue(item.findElement(By.id("tv_product_startamount")).getText().equals(startAmount));
                    productFound = true;
                    break;
                }
            }
            scrollDown();
            i++;
        }

        return productFound;
    }
}
