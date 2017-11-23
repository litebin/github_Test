package baseFrame.commonUtils; /**
 * Created by Administrator on 2017/7/20.
 */
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        monochrome = true,
        strict = false,
        features = "src/test/resources/feature/apiFeature/wealth",
        plugin = {"pretty","json:target/cucumber.json"},
        tags = {},
        glue = {"apiStep"}
)
public class CucumberRun {

}