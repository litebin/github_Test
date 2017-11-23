package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;


/**
 * Created by corncandy on 2017/7/31.
 */
public class BasePage {
    private AppiumDriver driver;
    private WebDriverWait wait;

    public BasePage(AppiumDriver driver) throws Exception {
        this.driver = driver;
        wait = new WebDriverWait(this.driver, 30);
    }

    public void waitForElementToBeVisible(WebElement element) {

        wait.until((Function<? super WebDriver, Object>) ExpectedConditions.visibilityOf(element));
    }

    public void changeDriverContextToWeb() {
        Set<String> allContext = driver.getContextHandles();
        for (String context : allContext) {
            System.out.println("!!!!!!!!!Context:" + context);
            if (context.contains("WEBVIEW")) {
                driver.context(context);
            }
        }
    }

    public void changeDriverContextToNative() {
        Set<String> contextNames = driver.getContextHandles();
        for (String contextName : contextNames) {
            if (contextName.contains("NATIVE")) {
                driver.context(contextName);
            }
        }
    }

    public void getScreenshot(String imageFolder) throws IOException {
        File srcImgFile = driver.getScreenshotAs(OutputType.FILE);
        String filename = UUID.randomUUID().toString();
        File targetImgFile = new File(imageFolder + filename + ".jpg");
        FileUtils.copyFile(srcImgFile, targetImgFile);
    }

    public void scrollDown() {
        int height = driver.manage().window().getSize().getHeight();
        driver.swipe(5, height * 2 / 3, 5, height / 3, 1000);
    }

    public void scrollUp() {
        int height = driver.manage().window().getSize().getHeight();
       driver.swipe(height / 3, 5, 5, height * 2 / 3, 1000);
    }

    public void scrollDownToEle(By locatorOfElement) {
        int i = 0;
        while (i < 12) {
            if (driver.findElements(locatorOfElement).size() > 0)
                return;
            scrollDown();
            i++;
        }
        System.out.println("Couldn't find element: " + locatorOfElement.toString());
    }

    public void scrollDownTo(String text) {
        By locatorOfElement = By.xpath("//*[@text=\"" + text + "\"]");
//        driver.hideKeyboard();
        int i = 0;
        while (i < 12) {
            if (driver.findElements(locatorOfElement).size() > 0)
                return;
            scrollDown();
            i++;
        }
        System.out.println("Couldn't find text : " + locatorOfElement.toString());
    }

    public void checkToast(String message) throws Throwable {
        Wait wait = new FluentWait(driver)
                .withTimeout(10, TimeUnit.SECONDS)
                .pollingEvery(10, TimeUnit.MILLISECONDS);
        Assert.assertNotNull(wait.until((Function) ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@text='" + message + "']"))));
    }
}
