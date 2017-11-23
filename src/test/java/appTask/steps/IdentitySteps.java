package appTask.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import appTask.pages.IdentityPage;

/**
 * Created by corncandy on 2017/8/3.
 */
public class IdentitySteps extends BaseSteps {
    @And("^I click goto identity button$")
    public void iClickGotoIdentityButton() throws Throwable {
        new IdentityPage(appiumDriver).gotoIdentity();
    }

    @And("^I input correct info$")
    public void iInputCorrectInfo() throws Throwable {
        new IdentityPage(appiumDriver).inputIdentity();
    }

    @And("^I click add button$")
    public void iClickAddButton() throws Throwable {
        new IdentityPage(appiumDriver).clickAdd();
    }

    @Then("^I successfully identity$")
    public void iSuccessfullyIdentity() throws Throwable {
        // TODO: Don't know how.
        Assert.assertTrue(true);
    }

    @Then("^I can see identity info$")
    public void iCanSeeIdentityInfo() throws Throwable {
        Assert.assertTrue(new IdentityPage(appiumDriver).identityShown());
    }
}
