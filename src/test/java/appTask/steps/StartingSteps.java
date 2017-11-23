package appTask.steps;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.AndroidMobileCapabilityType;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.remote.MobilePlatform;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * Created by corncandy on 2017/7/25.
 */
public class StartingSteps extends BaseSteps {

    private AppiumDriverLocalService appiumService;

    @Before
    public void startAppiumServer() throws IOException {
        int port = 4723;

        appiumService = AppiumDriverLocalService.buildService(
                new AppiumServiceBuilder()
                        .usingDriverExecutable(new File("/usr/local/bin/node"))
                        .withAppiumJS(new File("/usr/local/bin/appium"))
                        .withIPAddress("0.0.0.0")
                        .usingPort(port)
                        .withArgument(GeneralServerFlag.SESSION_OVERRIDE)
                        .withLogFile(new File("build/appium.log"))
        );
        appiumService.start();

        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, MobilePlatform.ANDROID);
//        capabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, "7.0");
//        capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, "3HX5T17412021142");
        capabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, "6.0");
        capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, "LE67A06170173703");
        capabilities.setCapability(MobileCapabilityType.NO_RESET, true);
        capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "UiAutomator2");
        capabilities.setCapability(AndroidMobileCapabilityType.APP_PACKAGE, "com.wanda.wealthapp");
        capabilities.setCapability(AndroidMobileCapabilityType.APP_ACTIVITY, "com.wanda.wealthapp.module.startup.StartupActivity");
        capabilities.setCapability("autoGrantPermissions", true);
//        capabilities.setCapability(MobileCapabilityType.FULL_RESET, true);
//        capabilities.setCapability(MobileCapabilityType.APP, "/Users/corncandy/IdeaProjects/HelloAppium/app/quikr.apk");
//        capabilities.setCapability(MobileCapabilityType.NEW_COMMAND_TIMEOUT, 120);
        appiumDriver = new AndroidDriver<>(appiumService.getUrl(), capabilities);
        appiumDriver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
    }

    @After
    public void tearDown(Scenario scenario) {
        try {
            if (scenario.isFailed()) {
                // TODO: Cannot take shot when in IDE, but can in Jenkins?
                // final byte[] screenshot = appiumDriver.getScreenshotAs(OutputType.BYTES);
                // scenario.embed(screenshot, "image/png");
            }
        } catch (Exception e) {
            System.out.println("Exception while running Tear down :" + e.getMessage());
        } finally {
            appiumDriver.quit();
            appiumService.stop();
        }
    }
}
