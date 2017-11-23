package apiTask.uppStep;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Administrator on 2017/11/23.
 */
public class Remotename {
    public static void main(String[] args) {
        String text = "aa aa bb bb ff ff rrr ddsss";
        System.out.println(test(text));
        String[] array = {"a", "b", "c", "c", "d", "e", "e", "e", "a"};
        ArrayList<String> list = new ArrayList<>();
        for(int i=0;i<array.length;i++){
            for(int j=i+1;j<array.length;j++){
                if (array[i] == array[j]){
                    j=++i;
                }
            }
            list.add(array[i]);
        }
        String[] resutl=(String[])list.toArray(new String[list.size()]);
        System.out.println(Arrays.toString(resutl));

    }
     public   static String test(String text){
            String[] str=text.split(" ");
        if (str.length == 0) {
            return null;
        }
        List<String> list=new ArrayList<String>();
        StringBuffer ac=new StringBuffer();
        for (int i=0;i<str.length;i++){
            if(!list.contains(str[i])){
                list.add(str[i]);
                ac.append(str[i]);

            }
        }
        return ac.toString().substring(0, ac.toString().length() - 1) ;
    }
}
