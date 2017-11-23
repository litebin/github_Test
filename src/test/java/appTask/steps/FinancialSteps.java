package appTask.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import appTask.pages.FinancialPage;
import appTask.pages.HomePage;

/**
 * Created by corncandy on 2017/8/2.
 */
public class FinancialSteps extends BaseSteps {
    @When("^I goto financial page$")
    public void iGotoFinancialPage() throws Throwable {
        new HomePage(appiumDriver).gotoFinance();
    }

    @Then("^I can see product list$")
    public void iCanSeeProductList() throws Throwable {
        Assert.assertTrue(new FinancialPage(appiumDriver).getProductList().size() > 0);
    }

    @And("^I goto private placement$")
    public void iGotoPrivatePlacement() throws Throwable {
        new FinancialPage(appiumDriver).gotoPrivatePlacement();
    }

    @Then("^I can see private placement$")
    public void iCanSeePrivatePlacement() throws Throwable {
        Assert.assertTrue(new FinancialPage(appiumDriver).privatePlacementShown());
    }

    @And("^I goto aeon life$")
    public void iGotoAeonLife() throws Throwable {
        new FinancialPage(appiumDriver).gotoAeonLife();
    }

    @Then("^I can see aeon life$")
    public void iCanSeeAeonLife() throws Throwable {
        Assert.assertTrue(new FinancialPage(appiumDriver).aeonLifeShown());
    }

    @And("^I goto oversea property$")
    public void iGotoOverseaProperty() throws Throwable {
        new FinancialPage(appiumDriver).gotoOverseaProperty();
    }

    @Then("^I can see oversea property$")
    public void iCanSeeOverseaProperty() throws Throwable {
        Assert.assertTrue(new FinancialPage(appiumDriver).overseaPropertyShown());
    }
}
