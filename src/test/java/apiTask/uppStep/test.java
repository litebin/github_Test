package apiTask.uppStep;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/11/3.
 */
public class test extends  demo{
    //生成20个字母 + 10个数字组成的随机数
    String businessSeqNo=GetRandomchar(20)+getRandomNuber(10);
    //获取当前日期
    SimpleDateFormat matter1 = new SimpleDateFormat("yyyy-MM-dd");
    //获取当前时间
    SimpleDateFormat matter2 = new SimpleDateFormat("HH:mm:ss");
    public static void main(String[] args) {
        test ad=new test();
        Date dt = new Date();
        System.out.println(ad.matter1.format(dt));
        System.out.println(ad.matter2.format(dt));
        System.out.println(ad.businessSeqNo);

    }
}
