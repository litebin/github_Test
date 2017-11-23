package appTask.pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * Created by corncandy on 2017/8/1.
 */
public class SettingPage extends BasePage {
    AppiumDriver appiumDriver;

    @FindBy(id = "img_avatar")
    private WebElement avatarButton;

    @FindBy(id = "btn_xiangce")
    private WebElement galleryButton;

    @FindBy(id = "btn_take_photo")
    private WebElement cameraButton;

    @FindBy(id = "btn_cancel")
    private WebElement cancelButton;

    public SettingPage(AppiumDriver appiumDriver) throws Exception {
        super(appiumDriver);
        this.appiumDriver = appiumDriver;
        PageFactory.initElements(appiumDriver, this);
    }

    public void changeAvatar() {
        avatarButton.click();
    }

    public void selectFromGallery() {
        galleryButton.click();
        List<WebElement> images = appiumDriver.findElements(By.xpath("//android.widget.ImageView"));
        // image 0 is gallery select on LePhone
        images.get(1).click();
    }

    public void selectFromCamera() {
        cameraButton.click();
        appiumDriver.findElement(By.id("take_photo")).click();
        appiumDriver.findElement(By.id("img_confirm")).click();
    }

    public boolean avatarShown() {
        waitForElementToBeVisible(avatarButton);
        return avatarButton.isDisplayed();
    }

    public void selectCancel() {
        cancelButton.click();
    }
}
