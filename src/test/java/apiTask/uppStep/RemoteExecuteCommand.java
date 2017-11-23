package apiTask.uppStep;

import ch.ethz.ssh2.Connection;
import ch.ethz.ssh2.Session;



import java.io.IOException;

/**
 * Created by Administrator on 2017/11/2.
 */
public class RemoteExecuteCommand {
    //字符编码默认是utf-8
    private static String  DEFAULTCHART="UTF-8";
    private static Connection conn;
    private String ip;
    private String userName;
    private String userPwd;

    public RemoteExecuteCommand(String ip, String userName, String userPwd) {
        this.ip = ip;
        this.userName = userName;
        this.userPwd = userPwd;
    }

    public RemoteExecuteCommand() {

    }

    /**
     * 远程登录linux的主机
     * @author Ickes
     * @since  V0.1
     * @return
     *      登录成功返回true，否则返回false
     */
    public Boolean login(){
        boolean flg=false;
        try {
            conn = new Connection(ip);
            conn.connect();//连接
            flg=conn.authenticateWithPassword(userName, userPwd);//认证
            if (flg){
                System.out.println("认证成功！");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return flg;
    }
    /**
     * @author Ickes
     * 远程执行shll脚本或者命令
     * @param cmd
     *      即将执行的命令
     * @return
     *      命令执行完后返回的结果值
     * @since V0.1
     */
//    public String execute(String cmd){
//        String result="";
//        try {
//            if(login()){
//                Session session= conn.openSession();//打开一个会话
//                session.execCommand(cmd);//执行命令
//                result=processStdout(session.getStdout(),DEFAULTCHART);
//                //如果为得到标准输出为空，说明脚本执行出错了
//                if(StringUtils.isBlank(result)){
//                    result=processStdout(session.getStderr(),DEFAULTCHART);
//                }
//                conn.close();
//                session.close();
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
    public static void main(String[] args) {
        String ip="10.214.170.47:22";
        String userName="userapp";
        String userPwd="D:\\Xshell\\Xshell+Xftp\\Xshell+Xftp\\weifw-wg-test.pem";
        RemoteExecuteCommand an= new RemoteExecuteCommand();
        an.login();


    }
}
