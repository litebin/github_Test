package apiTask.uppStep;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/11/3.
 */
public class test extends  demo{
    //����20����ĸ + 10��������ɵ������
    String businessSeqNo=GetRandomchar(20)+getRandomNuber(10);
    //��ȡ��ǰ����
    SimpleDateFormat matter1 = new SimpleDateFormat("yyyy-MM-dd");
    //��ȡ��ǰʱ��
    SimpleDateFormat matter2 = new SimpleDateFormat("HH:mm:ss");
    public static void main(String[] args) {
        test ad=new test();
        Date dt = new Date();
        System.out.println(ad.matter1.format(dt));
        System.out.println(ad.matter2.format(dt));
        System.out.println(ad.businessSeqNo);

    }
}
