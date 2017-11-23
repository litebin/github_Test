package baseFrame.appUtils;

import baseFrame.commonUtils.BaseAction;
import baseFrame.commonUtils.WebDrivers;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidElement;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import java.util.List;

/**
 * Created by yaolei on 2017/3/17.
 */
public abstract class AppElementUtils extends BaseAction {
    private static final Logger logger = Logger.getLogger(AppElementUtils.class);
    public AppiumDriver<AndroidElement> driver = WebDrivers.getAppDriver();
  /*********************************************************************************************
     *                                      找元素
   *********************************************************************************************/
    //通过ID查找元素
    public AndroidElement findEleById(String id)  {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        AndroidElement a = driver.findElement(By.id(id));

        return a;
    }
    //通过name找元素
    public AndroidElement findEleByName(String name) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        AndroidElement a = driver.findElement(By.name(name));

        return a;
    }
    //通过classname查找元素
    public AndroidElement findEleByClassN(String classname)  {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        AndroidElement a = driver.findElement(By.className(classname));
        return a;
    }
    //通过content_desc查找元素
    public AndroidElement findEleByContent(String content)  {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        AndroidElement a = driver.findElementByAccessibilityId(content);
        return a;
    }
   //多classname定位元素
    public AndroidElement findElementsByClass(String classname, int index){

            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            AndroidElement a = driver.findElements(By.className(classname)).get(index);
               return a;
    }
    //多ID定位
    public AndroidElement findElementsById(String id, int index){

        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        AndroidElement a = driver.findElements(By.id(id)).get(index);
        return a;
    }
    /*********************************************************************************************
     *                                       输入
     *********************************************************************************************/
    //多个相同的classname元素定位选取输入
    public void ElementsSend(String classname,int index,String content)  {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        List<AndroidElement> a = driver.findElements(By.className(classname));
        a.get(index).sendKeys(content);
        logger.info("输入成功");
    }
    //通过ID输入
    public void byIdSend(String id,String key) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleById(id).sendKeys(key);
            logger.info("输入成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //通过classname输入
    public void byClassSend(String classname,String key) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleByClassN(classname).sendKeys(key);
            logger.info("输入成功");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    //通过name输入
    public void byNameSend(String name,String key) {
        try {
        Thread.sleep(500);
    } catch (InterruptedException e) {
        e.printStackTrace();
    }
        try {
        findEleByName(name).sendKeys(key);
        logger.info("输入成功");
    }catch (Exception e){
        e.printStackTrace();
    }
}
    //通过content输入
    public void byContentSend(String content, String key) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleByContent(content).sendKeys(key);
            logger.info("输入成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /*********************************************************************************************
     *                                          点击
     *********************************************************************************************/
    //多个相同的classname元素定位选取点击
    public void ElementsClick(String classname,int index)  {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        List<AndroidElement> a = driver.findElements(By.className(classname));
        a.get(index).click();
        logger.info("点击成功");
    }
    //通过ID点击
    public void byIdClick(String id) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleById(id).click();
            logger.info("点击成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //通过name点击
    public void byNameClick(String name) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleByName(name).click();
            logger.info("点击成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //通过classname点击
    public void byClassClick(String classname) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleById(classname).click();
            logger.info("点击成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //通过conten点击
    public void byContentClick(String content) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            findEleByContent(content).click();
            logger.info("点击成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //  获取BY
    public By getBy(String type, String value)
    {
        By by= null;
        if(type.equals("id"))
        {
            by= By.id(value);
        }
        if(type.equals("name"))
        {
            by= By.name(value);
        }
        if(type.equals("xpath"))
        {
            //在调用该方法的时候在yaml里面需要将value的值加双引号
            by= By.xpath(value);
        }
        if (type.equals("linkText")){
            by= By.linkText(value);
        }
        if(type.equals("class")){
            by= By.className(value);
        }
        return by;

    }




}






