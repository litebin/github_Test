package apiTask.uppStep;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/11/23.
 */
public class Removesamestring {
    public static void main(String[] args) {
        String text = "test test text text remove remove string string";
        System.out.println("strWay1:" + strWay1(text));
        //   System.out.println("strWay2:"+strWay2(text));
    }

    //·½·¨Ò»
    public static String strWay1(String text) {
        String[] str = text.split(" ");
        if (str.length == 0) {
            return null;
        }
        List<String> list = new ArrayList<String>();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < str.length; i++) {
            if (!list.contains(str[i])) {
                list.add(str[i]);
                sb.append(str[i] + " ");
            }
        }
        return sb.toString().substring(0, sb.toString().length() - 1);
    }
}