package apiTask.uppStep;

import java.util.Random;

/**
 * Created by Administrator on 2017/11/3.
 */
public abstract class demo {
    public static final String numberChar = "0123456789";
    public static final String string = "abcdefghijklmnopqrstuvwxyz";
    public String getRandomNuber(int n ) {
        StringBuffer ab = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < n; i++) {
            ab.append(numberChar.charAt(random.nextInt(numberChar.length())));
        }
        return ab.toString();
    }
   public String GetRandomchar(int n){
       StringBuffer ab=new StringBuffer();
       Random random=new Random();
       for(int i=0;i<n;i++){
           ab.append(string.charAt(random.nextInt(string.length())));
       }
       return ab.toString();

   }

}
