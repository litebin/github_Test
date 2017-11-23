package baseFrame.commonUtils;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by yaolei on 2017/10/12.
 */
public class DatabaseConnection {

    private static final Logger logger = Logger.getLogger(DatabaseConnection.class);
    /**
     * Create Connection
     *
     * @return
     * @throws Exception
     */
    public Connection connectDBDriver() throws Exception {
        Connection conn = null;
        String url= BaseConf.getProperty("DBURL");
        String dbtype=BaseConf.getProperty("DBTYPE");
        String username=BaseConf.getProperty("DBUSERNAME");
        String password=BaseConf.getProperty("DBPASSWORD");
        try {
            if (dbtype.equals("mysql")) {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } else if (dbtype.equals("oracle")) {
                Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            } else {
                logger.error("undefined db type !");
            }
            conn = DriverManager.getConnection(url, username, password);
            logger.info("数据库连接成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("数据库连接失败");
        }
        return conn;
    }
    /**
     * close DB
     *
     * @param conn
     * @throws Exception
     */
    public void closeDBDriver(Connection conn) throws Exception {
        try {
            conn.close();
            logger.info("数据库连接中断");
        } catch (Exception e) { /* ignore close errors */
            e.printStackTrace();
            logger.error(e.toString());
        }
    }

    /**
     * get ResultSet
     *
     * @param conn
     * @param sql
     * @return
     * @throws Exception
     */
    private ResultSet getResultSet(Connection conn, String sql)
            throws Exception {
        ResultSet resultSet = null;
        try {
            // PreparedStatement pstmt;
            // ResultSet rset;
            Statement statement = conn.createStatement(
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            // pstmt = conn.prepareStatement(sql);
            resultSet = statement.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.toString());
        }
        return resultSet;
    }


    public static void main(String[] args) throws Exception {
        DatabaseConnection databaseConnection=new DatabaseConnection();
        Connection connection = null;
        try {
            connection=databaseConnection.connectDBDriver();
        } catch (Exception e) {
            e.printStackTrace();
        }
        String id;
        String ps;
      ResultSet rs=databaseConnection.getResultSet(connection,"select * from auth_user");
        while(rs.next()){
          id=rs.getString("id");
          ps=rs.getString("password");
            System.out.println(id+"::::"+ps);
        }
        databaseConnection.closeDBDriver(connection);
    }

}

