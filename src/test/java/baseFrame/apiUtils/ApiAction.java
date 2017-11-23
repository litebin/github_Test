package baseFrame.apiUtils;

import baseFrame.commonUtils.BaseAction;

import java.util.ArrayList;

/**
 * Created by yaolei on 2017/8/23.
 */
public class ApiAction extends BaseAction {
    public static String uri= null;
    public static Object param = null ;
    public static String response = null;
    public static String loansMobile = null;
    public static String wealthMobile = null;
    public static String wealAccesstoken = null;
    public static String name = null;
    public ArrayList<String> messageUUIDs;
    public ArrayList<String> allRequestStatus;
    public ArrayList<String> allRouteStatus;
    public ArrayList<String> allSendStatus;
    //public ArrayList<String> allPushRequestId;
    public String pushColumnValue;
    public ArrayList<String> smsColumnValue;
    public ArrayList<String> requestIds;
    public static String cookiestore=ApiConf.getProperty("wdloans_cookie");//modify by pengcheng  20170921
    private  String ip=null ;


    /**
     *
     * @TODO：获取ip
     *
     * @return
     */
    public String getIp(String name){
        switch (name){
            case "uap":ip=ApiConf.getProperty("uap_ip");
                break;
            case "wealth":ip=ApiConf.getProperty("wealth_ip");
                break;
            case "loans":ip=ApiConf.getProperty("loans_ip");
                break;
            case "coupon":ip=ApiConf.getProperty("coupon_ip");
                break;
            case "mdp":ip=ApiConf.getProperty("mdp_ip");
                break;
            case "upp":ip=ApiConf.getProperty("upp_ip");
                break;


        }
        return ip;
    }

    //获取银行卡号
    public String getBankCard(){
        return "622622"+getRandomNumberChar(10);
    }
}
