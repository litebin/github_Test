package appTask.steps;

import cucumber.api.java.en.And;
import appTask.pages.AssessmentPage;

/**
 * Created by corncandy on 2017/8/3.
 */
public class AssessmentSteps extends BaseSteps {
    @And("^I click start assessment$")
    public void iClickStartAssessment() throws Throwable {
        new AssessmentPage(appiumDriver).startAssessment();
    }

    @And("^I answer all questions$")
    public void iAnswerAllQuestions() throws Throwable {
        new AssessmentPage(appiumDriver).answerAll();
    }
}
