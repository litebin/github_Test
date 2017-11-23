package baseFrame.appUtils;

import baseFrame.commonUtils.WebDrivers;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

/**
 */
public class MouseEventExt {
    private  static WebDriver driver= WebDrivers.getWebDriver();
    /**
     * 由于火狐不支持perform函数，火狐再调用的时候会抛出异常，对于该异常进行忽略。
     * @param ele
     */
    public static void moveToEle(String ele){
        Actions actions = new Actions(driver);
        WebElement wo = driver.findElement(By.cssSelector(ele));
        try
        {
            actions.moveToElement(wo).perform();
            waitimes(1);//等待1秒，保证悬浮到位置后，能有选项出现
        }catch (Exception e){

        }
    }

    /**
     * 由于IE在点击子产品的时候出现点击不到的问题，因此通过js事件来触发点击事件。
     * @param eleId
     * @param index
     */
    public static void clickHideEleByParentId(String eleId,int index){
        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("document.querySelectorAll('");
        stringBuilder.append(eleId);
        stringBuilder.append("')[");
        stringBuilder.append(index);
        stringBuilder.append("].click();");
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript(stringBuilder.toString());
    }

    /**
     * 线程等待
     * @param lon
     */
    public  static void waitimes(int lon){
        try {
            Thread.sleep(lon);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
