package appTask.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import appTask.pages.AssessmentPage;
import appTask.pages.MyPage;
import appTask.pages.SettingPage;

/**
 * Created by corncandy on 2017/8/3.
 */
public class AccountSteps extends BaseSteps {
    @And("^I goto setting page$")
    public void iGotoSettingPage() throws Throwable {
        new MyPage(appiumDriver).gotoSetting();
    }

    @And("^I click avatar button$")
    public void iClickAvatarButton() throws Throwable {
        new SettingPage(appiumDriver).changeAvatar();
    }

    @And("^I select one image from gallery$")
    public void iSelectOneImageFromGallery() throws Throwable {
        new SettingPage(appiumDriver).selectFromGallery();
    }

    @Then("^My avatar is changed$")
    public void myAvatarIsChanged() throws Throwable {
        Assert.assertTrue(new SettingPage(appiumDriver).avatarShown());
    }

    @And("^I select one image form camera$")
    public void iSelectOneImageFormCamera() throws Throwable {
        new SettingPage(appiumDriver).selectFromCamera();
    }

    @And("^I select cancel$")
    public void iSelectCancel() throws Throwable {
        new SettingPage(appiumDriver).selectCancel();
    }

    @Then("^My avatar is not changed$")
    public void myAvatarIsNotChanged() throws Throwable {
        // TODO: Don't know how now.
        Assert.assertTrue(new SettingPage(appiumDriver).avatarShown());
    }

    @And("^I click identity item$")
    public void iClickIdentityItem() throws Throwable {
        new MyPage(appiumDriver).gotoIdentity();
    }

    @And("^I click assessment item$")
    public void iClickAssessmentItem() throws Throwable {
        new MyPage(appiumDriver).gotoAssessment();
    }

    @Then("^I have finished assessment$")
    public void iHaveFinishedAssessment() throws Throwable {
        Assert.assertTrue(new AssessmentPage(appiumDriver).isShown());
    }
}
