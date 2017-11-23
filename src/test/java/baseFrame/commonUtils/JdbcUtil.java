package baseFrame.commonUtils;

import baseFrame.apiUtils.ApiConf;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.log4j.Logger;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by xdb on 2017/10/20.
 */
public class JdbcUtil {
    private static final Logger logger = Logger.getLogger(JdbcUtil.class);
    private static ComboPooledDataSource ds;

    //private static DataSource ds;
    static {
        ds = new ComboPooledDataSource();
        try {
            ds.setDriverClass(ApiConf.getProperty("mdp_driver"));
        } catch (PropertyVetoException e) {
            logger.error(e);
        }
        ds.setJdbcUrl(ApiConf.getProperty("mdp_jdbc_url"));
        ds.setUser(ApiConf.getProperty("mdp_username"));
        ds.setPassword(ApiConf.getProperty("mdp_password"));

        ds.setMinPoolSize(5);
        ds.setInitialPoolSize(10);
        ds.setAcquireIncrement(5);
        ds.setMaxPoolSize(20);
    }

    public DataSource getDatasource() {
        return ds;
    }

    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = ds.getConnection();
        } catch (SQLException e) {
            logger.error(e);
        }
        return conn;
    }

    public static void close(ResultSet rs, Statement st, Connection co) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                logger.error(e);
            } finally {
                rs = null;
            }
        }

        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                logger.error(e);
            } finally {
                st = null;
            }
        }

        if (co != null) {
            try {
                co.close();
            } catch (SQLException e) {
                logger.error(e);
            } finally {
                co = null;
            }
        }
    }

}
