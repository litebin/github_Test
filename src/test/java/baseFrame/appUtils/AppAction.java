package baseFrame.appUtils;

import io.appium.java_client.android.AndroidElement;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.util.concurrent.TimeUnit;

;

/**
 * Created by yaolei on 2017/3/30.
 */
public  class AppAction extends AppElementUtils {
   public static String  phoneRight;
    private static Logger logger = Logger.getLogger(AppAction.class);
    /*********************************************************************************************
     *                                          通用
     *********************************************************************************************/
    public void picStr(String name){
        File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        try {
            //设置存储路径，将截图另存为
            FileUtils.copyFile(scrFile, new File("PictureStr" + "\\" + name));
        } catch (Exception e) {
            // 自动处理异常
            logger.info("截图失败！");
            e.printStackTrace();
            return;
        }
        logger.info("截图成功！");
        logger.info("存储路径为:" + "PictureStr" + "\\" + name);
    }

    //隐性等待
    public void untilWait(int time){
        driver.manage().timeouts().implicitlyWait(time, TimeUnit.SECONDS);
    }


   //判断元素存在
    public boolean doesNameElementExist( String name)
    {
        try {
            findEleByName(name);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    public boolean doesContentElementExist( String content)
    {
        try {
            findEleByContent(content);
            return true;
        } catch (Exception e) {
            return false;
        }
    }



    //页面滑动
    public void pageSlide(int i1,int i2,int i3,int i4,int i5)  {

        driver.swipe(i1,i2,i3,i4,i5);
    }
    //退出
    public void quit(){
        driver.quit();
    }

    //滑动页面元素
    public void leftSlide(String className,int index){
        AndroidElement slider=findElementsByClass(className,index);
//获取控件起始X 坐标
        int xAxisStartPoint = slider.getLocation().getX();
        System.out.println("起始坐标为"+xAxisStartPoint);
// 获取控件最大宽度
        int xAxisEndPoint = xAxisStartPoint + slider.getSize().getWidth();
        System.out.println("结束坐标为"+xAxisEndPoint);
//获取控件的高度
        int yAxis = slider.getLocation().getY();
        System.out.println("高度为"+yAxis);
        driver.swipe(xAxisEndPoint-20,yAxis+20, xAxisStartPoint+10,yAxis+20, 1000);
    }
    public void swipeToDown( ){
        int width = driver.manage().window().getSize().width;
        int height = driver.manage().window().getSize().height;
        System.out.println(width );
        System.out.println(height);
        driver.swipe(width / 2, height / 4, width /2 , height * 3 /4, 1000);
    }
    public void swipeToUp(){
        int width = driver.manage().window().getSize().width;
        int height = driver.manage().window().getSize().height;
        driver.swipe(width / 2, height * 3/ 4, width /2 , height * 3/5, 1000);

    }

}
