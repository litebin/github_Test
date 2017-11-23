package baseFrame.commonUtils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;



/**
 * Created by yaolei on 2017/10/16.
 */
public class RedisClient {
    private static String ADDR = BaseConf.getProperty("redisIp");
    private static int PORT = Integer.parseInt(BaseConf.getProperty("redisPort"));
    private static int TIMEOUT = 10000;
    private static JedisPool jedisPool = null;

    /**
     * 初始化Redis连接池
     */
    static {
        try {
            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxTotal(512);
            config.setMaxIdle(50);
            config.setMaxWaitMillis(10000);
            config.setTestOnBorrow(true);
            jedisPool = new JedisPool(config, ADDR, PORT, TIMEOUT);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取Jedis实例
     * @return
     */
    public  static Jedis getJedis() {
        try {
            if (jedisPool != null) {
                Jedis jedis = jedisPool.getResource();
                return jedis;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 释放jedis资源
     * @param jedis
     */
    public static void returnResource(Jedis jedis) {
        if (jedis != null) {
            jedisPool.returnResource(jedis);
        }
    }
    /**
     * 清理缓存
     * @param jedis
     */
    public static void flushAll(Jedis jedis) {
        if (jedis != null) {
            jedis.flushAll();
        }
    }

    public static void main(String[] args) {
    flushAll(getJedis());
    }

}

