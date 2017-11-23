package apiTask.uppStep;

import java.util.Random;

/**
 * Created by Administrator on 2017/11/21.
 */
public  class Getrandom {
    public  static  final String namberChar="0123456789";
    public static final  String  string="abcdefghijklmnopqrstuvwxyz";
    public String  getNamberChar(int n){
        StringBuffer ac=new StringBuffer();
        Random  random=new Random();
        for(int i =0;i<n;i++){
            ac.append(namberChar.charAt(random.nextInt(namberChar.length())));
        }
        return  ac.toString();
    }
    public  static String getString(int n){
        StringBuffer az=new StringBuffer();
        Random random=new Random();
        for (int i=0;i<n;i++) {
            az.append(string.charAt(random.nextInt(string.length())));
        }
        return az.toString();
    }

    public static void main(String[] args) {
        Getrandom ac=new Getrandom();

        System.out.println(ac.getString(20));
    }

}

