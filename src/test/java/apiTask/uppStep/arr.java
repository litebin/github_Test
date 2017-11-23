package apiTask.uppStep;

/**
 * Created by Administrator on 2017/11/21.
 */
public class arr {
    public static void main(String[] args) {
        int[] arry=new int[]{8,2,1,0,3};
        int[] index=new int[]{2,0,3,2,4,0,1,3,2,3,3};
        String tel="";
        for(int i :index){
            tel+=arry[i];
        }
        System.out.println("联系方式:"+tel);
    }
}
