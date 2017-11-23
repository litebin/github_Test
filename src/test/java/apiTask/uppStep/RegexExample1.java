package apiTask.uppStep;

import java.util.regex.Pattern;

/**
 * Created by Administrator on 2017/11/1.
 */
public class RegexExample1 {
    public static void main(String[] args) {
//        String content = "wandawealth-bvflmahnuhomqiwkutmw02488302895-1";
//
//        String pattern = "^wandawealth-([a-z]{20}[0-9]{11})-1$";
        String content ="36073519870918051X";
        String pattern ="^[1-9]\\d{5}[1-2]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|X)$";

        boolean isMatch = Pattern.matches(pattern, content);
        System.out.println("包含wandawealth:" + isMatch);
    }
    }

