package baseFrame.commonUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 */
public abstract class BaseAction  {

    public List<CheckPoint> checkPoints = new ArrayList<CheckPoint>();
    public static final String numberChar = "0123456789";
    public static final String string = "abcdefghijklmnopqrstuvwxyz";

    public void setCheckPoint( Object expectation,Object actual) {
        CheckPoint cp = new CheckPoint();
        cp.expectation = expectation;
        cp.actual = actual;
        checkPoints.add(cp);
    }

    public void check(String... comment) {
        for (int i = 0; i < checkPoints.size(); i++) {
            checkPoints.get(i).checkR();
        }
        checkPoints = new ArrayList<CheckPoint>();
    }


    //获取随机数
    public String getRandomNumberChar(int n) {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < n; i++) {
            sb.append(numberChar.charAt(random.nextInt(numberChar.length())));
        }
        return sb.toString();
    }

    //获取随机字符串
    public String getRandomString(int n) {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < n; i++) {
            sb.append(string.charAt(random.nextInt(string.length())));
        }
        return sb.toString();
    }




}
