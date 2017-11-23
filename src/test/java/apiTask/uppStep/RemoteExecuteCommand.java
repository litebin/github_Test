package apiTask.uppStep;

import ch.ethz.ssh2.Connection;
import ch.ethz.ssh2.Session;



import java.io.IOException;

/**
 * Created by Administrator on 2017/11/2.
 */
public class RemoteExecuteCommand {
    //�ַ�����Ĭ����utf-8
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
     * Զ�̵�¼linux������
     * @author Ickes
     * @since  V0.1
     * @return
     *      ��¼�ɹ�����true�����򷵻�false
     */
    public Boolean login(){
        boolean flg=false;
        try {
            conn = new Connection(ip);
            conn.connect();//����
            flg=conn.authenticateWithPassword(userName, userPwd);//��֤
            if (flg){
                System.out.println("��֤�ɹ���");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return flg;
    }
    /**
     * @author Ickes
     * Զ��ִ��shll�ű���������
     * @param cmd
     *      ����ִ�е�����
     * @return
     *      ����ִ����󷵻صĽ��ֵ
     * @since V0.1
     */
//    public String execute(String cmd){
//        String result="";
//        try {
//            if(login()){
//                Session session= conn.openSession();//��һ���Ự
//                session.execCommand(cmd);//ִ������
//                result=processStdout(session.getStdout(),DEFAULTCHART);
//                //���Ϊ�õ���׼���Ϊ�գ�˵���ű�ִ�г�����
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
