package baseFrame.commonUtils;

import baseFrame.webUtils.WebConf;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import org.apache.log4j.Logger;
import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.BrowserType;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

/**
 * WebDriver工厂类,根据webConf.properties中配置的browser来生成相应的WebDriver
 */
public class WebDrivers {

    private static final Logger logger = Logger.getLogger(WebDrivers.class);
    public void WebDrivers(){}
    private static WebDriver driver;
    private static AppiumDriver<AndroidElement> appdriver;

    public static WebDriver getWebDriver() {
        setDriver();
        return driver;
    }
    public static AppiumDriver getAppDriver() {
        setDriver();
        return appdriver;
    }

    /**
     * 根据Configurator配置的browserName来获取相应的WebDriver
     */
    public static void setDriver() {
        if (driver != null || appdriver != null) {
            return ;
        }
        setDriver(new DesiredCapabilities(WebConf.getProperty("browser"),"", Platform.getCurrent()));
    }
    private static void setDriver(DesiredCapabilities desiredCapabilities) {
        String appium_url = WebConf.getProperty("appium.url");
        if (appium_url != null && !appium_url.equals("")) {
            setAppDriver(appium_url);
            return;
        }

        String browser = desiredCapabilities.getBrowserName();
        String osname = System.getProperty("os.name");
        String arch = "";
        if (browser.toLowerCase().equals(BrowserType.CHROME)) {
            setChromeDriver(desiredCapabilities, osname, arch);
        } else if (browser.toLowerCase().equals(BrowserType.FIREFOX)) {
            setFireFoxDriver(desiredCapabilities, osname, arch);
        } else if (browser.toLowerCase().equals(BrowserType.IE)) {
            setIEDriver(desiredCapabilities, osname, arch);
        } else {
            logger.warn(browser + " is NOT SUPPORTED!!! Use IE as default!");
            setIEDriver(desiredCapabilities, osname, arch);
        }
    }

    private static void setAppDriver(String appium_url) {
        String appium_version = WebConf.getProperty("capability.appium-version");
        String platformName = WebConf.getProperty("capability.platformName");
        String platformVersion = WebConf.getProperty("capability.platformVersion");
        String deviceName = WebConf.getProperty("capability.deviceName");
        String app = WebConf.getProperty("capability.app");
        String appPackage = WebConf.getProperty("capability.appPackage");
        String appActivity = WebConf.getProperty("capability.appActivity");
        String unicodeKeyboard= WebConf.getProperty("capability.unicodeKeyboard") ;
        String resetKeyboard= WebConf.getProperty("capability.resetKeyboard") ;
        if (platformName.toLowerCase().trim().equals("android")) {
            DesiredCapabilities cap = new DesiredCapabilities();
            cap.setCapability("appium_version", appium_version);
            cap.setCapability("platformName", platformName);
            cap.setCapability("platformVersion", platformVersion);
            cap.setCapability("deviceName", deviceName);
            cap.setCapability("app", app);
            cap.setCapability("appPackage", appPackage);
            cap.setCapability("appActivity", appActivity);
          //  cap.setCapability("unicodeKeyboard", unicodeKeyboard);
          // cap.setCapability("resetKeyboard", resetKeyboard);
            AppiumDriver wd = null;
            try {
                wd = new AndroidDriver(new URL(appium_url), cap);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            wd.manage().timeouts().implicitlyWait(180, TimeUnit.SECONDS);
            appdriver = wd;
//            return wd;
        } else {
            //leave for dealing with ios
//            return null;
        }
    }

    private static void setChromeDriver(DesiredCapabilities desiredCapabilities, String osname, String arch) {
        String driverpath = "src/main/resources/drivers/chrome/";
        if (osname.equals("Mac OS X")) {
            driverpath += "chromedriver_mac";
        } else if (osname.equals("linux")) {
            if (arch.equals("x86_64")) {
                driverpath += "chromedriver_linux64";
            } else {
                driverpath += "chromedriver_linux32";
            }
        } else {
            //as windows
            driverpath += "chromedriver.exe";
        }

        logger.info("set Chrome driver: ostype " + osname + ", arch " + arch);
        System.setProperty("webdriver.chrome.driver", driverpath);
        driver = new ChromeDriver(desiredCapabilities);
//        return driver;
    }

    private static void setFireFoxDriver(DesiredCapabilities desiredCapabilities, String osname, String arch) {
        String driverpath = "src/main/resources/drivers/firefox/";
        if (osname.equals("Mac OS X")) {
            driverpath += "geckodriver_mac";
        } else if (osname.equals("linux")) {
            driverpath += "geckodriver_linux64";
        } else {
            //as windows
            driverpath += "geckodriver.exe";
        }
        logger.info("set FIREFOX driver: ostype " + osname + ", arch " + arch);
        System.setProperty("webdriver.gecko.driver", driverpath);
        FirefoxProfile profile = new FirefoxProfile();
        profile.setAcceptUntrustedCertificates(true);
        profile.setAssumeUntrustedCertificateIssuer(false);
        driver = new FirefoxDriver(new FirefoxBinary(), profile, desiredCapabilities);
//        driver = new FirefoxDriver(desiredCapabilities);
//        return driver;
    }

    /**
     * 设置IE driver,取消保护模式
     * @param desiredCapabilities
     * @return
     */
    private static void setIEDriver(DesiredCapabilities desiredCapabilities, String osname, String arch) {
        String driverpath = "src/main/resources/drivers/ie/";
        if (arch.equals("64")) {
            driverpath += "IEDriverServer_x64.exe";
        } else {
            //as 32bit arch
            driverpath += "IEDriverServer_32.exe";
        }
        logger.info("set IE driver: ostype " + osname + ", arch " + arch);
        System.setProperty("webdriver.ie.driver", driverpath);
        desiredCapabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
        driver = new InternetExplorerDriver(desiredCapabilities);
//        return driver;
    }
}
