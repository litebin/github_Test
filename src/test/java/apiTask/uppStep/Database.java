package apiTask.uppStep;

import java.sql.*;
import java.util.*;

import baseFrame.commonUtils.BaseConf;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by Administrator on 2017/11/3.
 */
public class Database {
    private static final Logger logger = Logger.getLogger(Database.class);

    /**
     * Create Connection
     *
     * @return
     * @throws Exception
     */


        //连接数据库对象初始化
        Connection con = null;
        String url = "jdbc:mysql://10.214.170.38:3310/sgw_uat?characterEncoding=utf8&useSSL=true";
        String name = "sgwuat";
        String pass = "sgwuat";
        String driver="com.mysql.cj.jdbc.Driver";
        //连接数据库
        public Database() {

            try
            {
                Class.forName(driver).newInstance();
            }
            catch(Exception E)
            {
                System.out.print("error");
                E.printStackTrace();

            }
            try {

                con = DriverManager.getConnection(url, name, pass);
                logger.info("登录成功");
            } catch (Exception e) {
                System.out.println(e);
                logger.info("登录失败");
            }
        }

    public static void main(String[] args) {
        Database ab =new Database();
    }
    }

