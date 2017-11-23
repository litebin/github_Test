package baseFrame.commonUtils;

/**
 * Created by Administrator on 2017/7/28.
 */

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import org.junit.runner.RunWith;
@RunWith(Cucumber.class)
@CucumberOptions(
        monochrome = true,
        strict = false,
        features = "src/test/resources/feature/apiFeature/testing/",
        plugin = {"pretty","json:target/cucumber.json"},
        tags = {},
        glue = {"apiTask"}
)
public class TestNgRun extends AbstractTestNGCucumberTests {

}
