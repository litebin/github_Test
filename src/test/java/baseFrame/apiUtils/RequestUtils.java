package baseFrame.apiUtils;

import baseFrame.commonUtils.JdbcUtil;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.*;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by yaolei on 2017/7/15.
 */
public abstract class  RequestUtils extends ApiAction{
    private static final Logger logger = Logger.getLogger(RequestUtils.class);
    public static int statuCode;


    /**
     *
     * @TODO：Get请求方式
     *
     * @return
     */
    public String doGet() {
        logger.info("开始执行GET请求");
        String result = null;
        // 创建HttpClient实例
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建HttpGet
        HttpGet  doGet = new HttpGet(uri);
        doGet.setHeader("appId",ApiConf.getProperty("appId"));
        doGet.setHeader("accessToken", ApiConf.getProperty("accessToken"));
        doGet.setHeader("X-OHM-UserId", ApiConf.getProperty("X-OHM-UserId"));
        doGet.setHeader("X-OHM-ClientKey", ApiConf.getProperty("X-OHM-ClientKey"));
        logger.info("执行请求的URI为：" + doGet.getURI());
        try {
            // 执行get请求
            CloseableHttpResponse response = httpClient.execute(doGet);
            try {
                if (response != null) {
                    // 获取状态码
                     statuCode = response.getStatusLine().getStatusCode();
                    // 若状态码不为200，则关闭response，若为200，则获取返回信息
                    if (statuCode != 200) {
                        logger.error("request faild,status code：" + statuCode + response.getStatusLine());
                        try {
                            result= EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                          //  jsonobject =new JSONObject( EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8")));
                            logger.info("response content:" + result);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        response.close();
                    } else {
                        // 将响应内容转化成JSON对象
                        try {
                            result= EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                            //jsonobject = new JSONObject(EntityUtils.toString(response.getEntity()));
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        logger.info("response content：" + result);
                    }
                } else {
                    logger.info("response is null");
                }
            } finally {
                response.close();
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 关闭连接，释放资源
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return  result;
    }
    /**
     *
     * @TODO：Delete请求方式
     *
     * @return
     */

    public String generateRequestTime(){
        long data=System.currentTimeMillis();
        String rqTime =  String.valueOf(data);
        logger.info("timeLength=13  generateRequestTime:" + rqTime);
        return rqTime;
    }

    public String generateRequestTime(int timeLength){
        long data=System.currentTimeMillis();
        String rqTime = "";
        if(timeLength > 0 && timeLength <19){
            long timeValue = new Double(data*(Math.pow(10,(timeLength-13)))).longValue();
            rqTime=String.valueOf(timeValue);
        }
        logger.info("timeLength=" + timeLength + "  generateRequestTime:" + rqTime);
        return rqTime;
    }
    public void saveBatchUUIDs(){
        //将批量接口响应中的uuid都提取出来，并保存到成员变量messageUUIDs中
        messageUUIDs = new ArrayList<String>();
        allRequestStatus = new ArrayList<String>();
        allRouteStatus = new ArrayList<String>();
        allSendStatus = new ArrayList<String>();
        JSONObject jsonObject = new JSONObject(response);
        Set keySet = jsonObject.keySet();
        keySet.forEach(key1 -> {
            try {
                String messageUUID = jsonObject.getJSONObject(key1.toString()).get("messageUUID").toString();
                messageUUIDs.add(messageUUID);
                logger.info("mobileNo:" + key1.toString() + "  messageUUID:" + messageUUID);
            }catch (JSONException e){
                logger.error(e);
            }
        });
    }

    public void saveSingleUUID(){
        //将接口响应中的uuid都提取出来，并保存到成员变量messageUUIDs中
        messageUUIDs = new ArrayList<String>();
        allRequestStatus = new ArrayList<String>();
        allRouteStatus = new ArrayList<String>();
        allSendStatus = new ArrayList<String>();
        JSONObject jsonObject = new JSONObject(response);
        try {
            String messageUUID = jsonObject.getString("messageUUID");
            messageUUIDs.add(messageUUID);
            logger.info("mobileNo:" +jsonObject.getString("mobileNo")+ "  messageUUID:" + messageUUID);
        }catch (JSONException e){
            logger.error(e);
        }
    }

    public static String listToString(List<String> srcList) {
        StringBuilder builder = new StringBuilder();
        for (int i=0; i<srcList.size(); i++) {
            builder.append(srcList.get(i) + ",");
        }
        if(!builder.toString().equals(""))
            builder.deleteCharAt(builder.length()-1);
        return builder.toString().trim();
    }
    public void saveAllLastStatus(String tableName,String columnName) {
        messageUUIDs.forEach(messageUUID ->{
            try {
                Connection connection = JdbcUtil.getConnection();
                String sql = "select * from "+tableName+ " where message_uuid=?  order by id";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, messageUUID);
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    ResultSetMetaData rsmd = resultSet.getMetaData();
                    ArrayList columnNameList = new ArrayList<String>();
                    ArrayList columnValueList = new ArrayList<String>();
                    for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                        columnNameList.add(rsmd.getColumnName(i));
                    }
                    columnNameList.forEach(columnNameFromList -> {
                        try {
                            columnValueList.add(resultSet.getString(columnNameFromList.toString()));
                        } catch (SQLException e) {
                            logger.error(e);
                        }
                    });
                    logger.info(listToString(columnNameList));
                    logger.info(listToString(columnValueList));
                    if(tableName.equals("sms_request_record")){
                        if(resultSet.isLast()) {
                            allRequestStatus.add(resultSet.getString(columnName));
                        }
                    }else if (tableName.equals("sms_routing_record")){
                        if(resultSet.isLast()) {
                            allRouteStatus.add(resultSet.getString(columnName));
                        }
                    }else if (tableName.equals("sms_send_record")){
                        if(resultSet.isLast()) {
                            allSendStatus.add(resultSet.getString(columnName));
                        }
                    }else{
                        logger.info("not implemented");
                    }
                }
                JdbcUtil.close(resultSet, preparedStatement, connection);
            }catch (Exception e){
                logger.error(e);
            }
        });
    }
    public String doDelete() {
        logger.info("开始执行DELETE请求");
        String result= null;
        // 创建HttpClient实例
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建httpDelete
        HttpDelete doDelete = new HttpDelete(uri);
        doDelete.setHeader("systemName",ApiConf.getProperty("systemName"));
        logger.info("执行请求的URI为：" + doDelete.getURI());
        try {
            // 执行httppost
            CloseableHttpResponse response = httpClient.execute(doDelete);
            // 打印结果
            try {
                if (response != null) {
                    // 获取状态码
                     statuCode = response.getStatusLine().getStatusCode();
                    // 若状态码不为200，则关闭response，若为200，则获取返回信息
                    if (statuCode != 200) {
                        logger.error("request faild,status code：" + statuCode + response.getStatusLine());
                        try {
                            result = EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                            logger.info("response content:" + result);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        response.close();
                    } else {
                        // 将响应内容转化成JSON对象
                        try {
                            result= EntityUtils.toString(response.getEntity());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        logger.info("response content：" + result);
                    }
                } else {
                    logger.info("response is null");
                }
            } finally {
                response.close();
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e1) {
            e1.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     *
     * @TODO：Post请求方式
     *
     * @return
     */

    public String doPost() throws UnsupportedEncodingException {
        logger.info("开始执行Post请求");
         String result = null;
        // 创建HttpClient实例
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建httppost
        //JSONObject jsonObject = new JSONObject(formparams);
        HttpPost dopost = new HttpPost(uri);
        dopost.setHeader("Content-type", ApiConf.getProperty("Content-type"));
        dopost.setHeader("X-OHM-ClientKey", ApiConf.getProperty("X-OHM-ClientKey"));
        dopost.setHeader("X-OHM-RequestId", ApiConf.getProperty("X-OHM-RequestId"));
        dopost.setHeader("X-OHM-UserId", ApiConf.getProperty("X-OHM-UserId"));
        dopost.setHeader("Connection", ApiConf.getProperty("Connection"));
        StringEntity entity =new StringEntity(param.toString(),Charset.forName("UTF-8"));
       // UrlEncodedFormEntity uefEntity;
        try {
            //uefEntity = new UrlEncodedFormEntity(entity, "UTF-8");
            dopost.setEntity(entity);
            logger.info("执行请求的URI为：" + dopost.getURI());
            logger.info("请求参数为：" + param);
            // 执行httppost
            CloseableHttpResponse response = httpClient.execute(dopost);

            // 打印结果
            try {
                if (response != null) {
                    // 获取状态码
                     statuCode = response.getStatusLine().getStatusCode();
                    // 若状态码不为200，则关闭response，若为200，则获取返回信息
                    if (statuCode != 200) {
                        logger.error("request faild,status code：" + statuCode + response.getStatusLine());
                        try {
                            result = EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                            logger.info("response content:" + result);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        response.close();
                    } else {
                        response.getEntity().getContentLength();
                        try {
                            result = EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        // 将响应内容转化成JSON对象
                        ;
                        logger.info("response content:" + result);
                    }
                } else {
                    logger.info("response is null");
                }
            } finally {
                response.close();
                dopost.releaseConnection();
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e1) {
            e1.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     *
     * @TODO：Put请求方式
     *
     * @return
     */
    public String doPut() throws UnsupportedEncodingException {
        logger.info("开始执行PUT请求");
        String result = null;
        // 创建HttpClient实例
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建httppost
        HttpPut doput = new HttpPut(uri);
        doput.setHeader("Content-type", ApiConf.getProperty("Content-type"));
        doput.setHeader("Authorization",wealAccesstoken);
        doput.setHeader("Connection", ApiConf.getProperty("Connection"));
        doput.setHeader("systemName",ApiConf.getProperty("systemName"));
        StringEntity entity =new StringEntity(param.toString(),Charset.forName("UTF-8"));
        try {
            doput.setEntity(entity);
            logger.info("执行请求的URI为：" + doput.getURI());
            logger.info("请求参数为：" + param);
            // 执行httppost
            CloseableHttpResponse response = httpClient.execute(doput);
            // 打印结果
            try {
                if (response != null) {
                    // 获取状态码
                     statuCode = response.getStatusLine().getStatusCode();
                    // 若状态码不为200，则关闭response，若为200，则获取返回信息
                    if (statuCode != 200) {
                        logger.error("request faild,status code：" + statuCode + response.getStatusLine());
                        try {
                            result = EntityUtils.toString(response.getEntity(), Charset.forName("UTF-8"));
                            logger.info("response content:" + result);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        response.close();
                    } else {
                        // 将响应内容转化成JSON对象
                        try {
                            result = EntityUtils.toString(response.getEntity());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        logger.info("response content：" + result);
                    }
                } else {
                    logger.info("response is null");
                }
            } finally {
                response.close();
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e1) {
            e1.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }


}




