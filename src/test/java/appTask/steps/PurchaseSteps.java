package appTask.steps;

import appTask.apis.AccountApi;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.json.JSONObject;
import org.junit.Assert;
import appTask.pages.HomePage;
import appTask.pages.LoginPage;
import appTask.pages.ProductPage;

import java.util.List;

/**
 * Created by corncandy on 2017/8/7.
 */
public class PurchaseSteps extends BaseSteps {
    private JSONObject account;

    @Given("^I am a brand new comer and logged in$")
    public void iAmABrandNewComerAndLoggedIn() throws Throwable {
        account = AccountApi.generateBrandNew();
        String mobile = account.getString("mobile");
        String password = account.getString("password");

        new HomePage(appiumDriver).login();
        new LoginPage(appiumDriver).loginWith(mobile, password);
    }

    @Given("^I am a new comer and logged in$")
    public void iAmANewComerAndLoggedIn() throws Throwable {
        account = AccountApi.generateNew();
        String mobile = account.getString("mobile");
        String password = account.getString("password");

        new HomePage(appiumDriver).login();
        new LoginPage(appiumDriver).loginWith(mobile, password);
    }

    @When("^I am in home page$")
    public void iAmInHomePage() throws Throwable {
        new HomePage(appiumDriver).gotoHome();
    }

    @Then("^I can see \"([^\"]*)\" product item$")
    public void iCanSeeProductItem(String arg0) throws Throwable {
        Assert.assertTrue(new HomePage(appiumDriver).newComerSpecialShown());
    }

    @And("^I click purchase button of \"([^\"]*)\" product item$")
    public void iClickPurchaseButtonOfProductItem(String arg0) throws Throwable {
        new HomePage(appiumDriver).newComerBuy();
    }

    @And("^I can see fixed product detail page$")
    public void iCanSeeFixedProductDetailPage() throws Throwable {
        Assert.assertTrue(new ProductPage(appiumDriver).isShown());
    }

    @And("^I click purchase button in fixed product detail page$")
    public void iClickPurchaseButtonInFixedProductDetailPage() throws Throwable {
        new ProductPage(appiumDriver).clickBuy();
    }

    @And("^I input (\\d+) as purchase amount in fixed product detail page$")
    public void iInputAsPurchaseAmountInFixedProductDetailPage(int amount) throws Throwable {
        new ProductPage(appiumDriver).inputAmount(amount);
    }

    @And("^I accept term and condition in fixed product detail page$")
    public void iAcceptTermAndConditionInFixedProductDetailPage() throws Throwable {
        new ProductPage(appiumDriver).agreeTerm();
    }

    @And("^I click submit button in fixed product detail page$")
    public void iClickSubmitButtonInFixedProductDetailPage() throws Throwable {
        new ProductPage(appiumDriver).clickSubmit();
    }

    @And("^I enter correct purchase password$")
    public void iEnterCorrectPurchasePassword() throws Throwable {
        new ProductPage(appiumDriver).inputPassword();
    }

    @Then("^I can see the \"([^\"]*)\" result page$")
    public void iCanSeeTheResultPage(String arg0) throws Throwable {
        Assert.assertTrue(new ProductPage(appiumDriver).isSuccess());
    }

    @Given("^The following home products exist:$")
    public void theFollowingHomeProductsExist(List<List<String>> products) throws Throwable {
        for (int i = 1; i < products.size(); i++) {
            List<String> product = products.get(i);
            System.out.println("!!!!!!!!" + product.toString());

            Assert.assertTrue(new HomePage(appiumDriver).isProductShown(product));
        }
    }

    @Then("^I can see home products in home page$")
    public void iCanSeeHomeProductsInHomePage() throws Throwable {
        Assert.assertTrue(true);
    }

}
