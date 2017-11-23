package apiTask.mdpStep;

import baseFrame.apiUtils.ApiAction;
import baseFrame.apiUtils.ApiConf;
import baseFrame.apiUtils.RequestUtils;
import baseFrame.commonUtils.JdbcUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONPath;
import com.jayway.jsonpath.Option;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.Test;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.sql.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by yaolei on 2017/10/9.
 */
public class mdpMain extends RequestUtils{
    private static final Logger logger = Logger.getLogger(mdpMain.class);

    /**
     * @TODO mdp单发消息post请求数据准备
     * @parameter @param path "请求的path"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做包含uuid和time(.*)参数的单一post请求数据准备(.*)和(.*)$")
    public void guid1_Dp(String name,int timeLength,String path,String param) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path;
        long data=System.currentTimeMillis();
        long rqTime = 0;
        switch (timeLength){
            case 9:rqTime=data/10000;
                break;
            case 10:rqTime=data/1000;
                break;
            case 11:rqTime=data/100;
                break;
            case 12:rqTime=data/10;
                break;
            case 13:rqTime=data;
                break;
            case 14:rqTime=data*10;
                break;
        }
        JSONObject json =new JSONObject(param);
        json.put("requestTime",rqTime);
        json.put("requestId", UUID.randomUUID().toString());
        ApiAction.param=json.toString();
    }

    @Given("^项目(.*)做只包含uuid参数的单一post请求数据准备(.*)和(.*)$")
    public void guid1_Dp(String name,String path,String param) throws Throwable {
        // requestTime 为空
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        json.put("requestTime","");
        json.put("requestId", UUID.randomUUID().toString());
        ApiAction.param=json.toString();
    }

    @Given("^项目(.*)做包含time(.*)参数的单一post请求数据准备(.*)和(.*)$")
    public void guid1_Dp2(String name,int timeLength,String path,String param) throws Throwable {
        // data prepare 重复requestId
        ApiAction.uri=getIp(name)+path;
        long data=System.currentTimeMillis();
        long rqTime = 0;
        switch (timeLength){
            case 9:rqTime=data/10000;
                break;
            case 10:rqTime=data/1000;
                break;
            case 11:rqTime=data/100;
                break;
            case 12:rqTime=data/10;
                break;
            case 13:rqTime=data;
                break;
            case 14:rqTime=data*10;
                break;
        }
        JSONObject json =new JSONObject(param);
        json.put("requestTime",rqTime);
        json.put("requestId", "191a5d9c3939470c8033e26387d24e7c");
        ApiAction.param=json.toString();
    }

    @Given("^项目(.*)做包含requestID为空参数的单一post请求数据准备(.*)和(.*)$")
    public void guid1_Dp3(String name,String path,String param) throws Throwable {
        // data prepare requestId为空
        ApiAction.uri=getIp(name)+path;
        long data=System.currentTimeMillis();
        long rqTime = 0;
             rqTime=data/100;
        JSONObject json =new JSONObject(param);
        json.put("requestTime",rqTime);
        json.put("requestId", "");
        ApiAction.param=json.toString();
    }

    @Given("^项目(.*)做包含requestID长度超过60单一post请求数据准备(.*)和(.*)$")
    public void guid1_Dp4(String name,String path,String param) throws Throwable {
        // data prepare requestID长度超过60
        ApiAction.uri=getIp(name)+path;
        long data=System.currentTimeMillis();
        long rqTime = 0;
        rqTime=data/100;
        JSONObject json =new JSONObject(param);
        json.put("requestTime",rqTime);
        json.put("requestId", "requestIDmorethan60srequestIDmorethan60srequestIDmorethan60s12");
        ApiAction.param=json.toString();
    }

    @Given("^项目(.*)做不包含requestID的单一post请求数据准备(.*)和(.*)$")
    public void guid1_NoreuquestID(String name,String path,String param) throws Throwable {
        // data prepare requestID长度超过60
        ApiAction.uri=getIp(name)+path;
        long data=System.currentTimeMillis();
        long rqTime = 0;
        rqTime=data/100;
        JSONObject json =new JSONObject(param);
        json.put("requestTime",rqTime);
        ApiAction.param=json.toString();
    }

    /**
     * @TODO mdp单发消息post请求数据准备
     * @parameter @param path "请求的path"
     * @parameter @param param "携带的body"
     *
     */
    @Given("^项目(.*)做包含uuid和time(.*)参数的批量post请求数据准备(.*)和(.*)$")
    public void guid2_Dp(String name,int timeLength,String path,String param) throws Throwable {
        // data prepare
        ApiAction.uri=getIp(name)+path;
        long data=System.currentTimeMillis();
        long rqTime = 0;
        switch (timeLength){
            case 10:rqTime=data/1000;
                break;
            case 11:rqTime=data/100;
                break;
            case 12:rqTime=data/10;
                break;
            case 13:rqTime=data;
                break;
        }
        JSONObject json =new JSONObject(param);
        json.put("requestTime",rqTime);
        JSONArray array=json.getJSONArray("targetList");
        int index=array.length()-1;
        for (int i=0;i<=index;i++){
            JSONObject jsonObject=array.getJSONObject(i);
            jsonObject.put("requestId", UUID.randomUUID().toString());
        }
        ApiAction.param=json.toString();
    }


    @Given("^项目(.*)做批量短信接口测试数据准备(.*)和(.*)$")
    public void batchPrepare(String name,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("requestTime")) {
            json.put("requestTime", generateRequestTime());
        }
        if (json.has("targetList")) {
            JSONArray array = json.getJSONArray("targetList");
            int index = array.length() - 1;
            for (int i = 0; i <= index; i++) {
                JSONObject jsonObject = array.getJSONObject(i);
                jsonObject.put("requestId", UUID.randomUUID().toString());
            }
        }
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
        ApiAction.param = json.toString();
    }


    @Given("^项目(.*)通道(.*)短信类型(.*)批量post请求数据准备(.*)和(.*)$")
    public void batchPrepare_zsy(String name,String channelName,String smsType, String path,String param) throws Throwable {
        logger.info(channelName+smsType);
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("requestTime")) {
            json.put("requestTime", generateRequestTime());
        }
        if (json.has("targetList")) {
            JSONArray array = json.getJSONArray("targetList");
            int index = array.length() - 1;
            for (int i = 0; i <= index; i++) {
                JSONObject jsonObject = array.getJSONObject(i);
                jsonObject.put("requestId", UUID.randomUUID().toString());
            }

        }
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
        ApiAction.param = json.toString();
    }

    @Given("^项目(.*)做单条OTP国际短信接口调用请求数据准备(.*)和$")
    public void sigleSmsIntDataPrepare(String name, String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        smsColumnValue = new ArrayList<String>();
        String requestId = "";
        if(json.has("requestTime")) {
            int requestTimeLength = json.getString("requestTime").length();
            String requestTime = generateRequestTime(requestTimeLength);
            json.put("requestTime",requestTime );
            logger.info("put requestTime :"+requestTime);
        }
        if(json.has("requestId")) {
            int requestIdLength = json.getString("requestId").length();
            requestId = getRandomString(requestIdLength);
            json.put("requestId", requestId);
            smsColumnValue.add(requestId);
            logger.info("put and save requestId :"+requestId);
        }
        if(json.has("params")){
            JSONObject jsonObjectParams=json.getJSONObject("params");
            jsonObjectParams.put("testContent"," requestId="+requestId+",path="+path);
        }
        ApiAction.param = json.toString();
    }


    @Given("^项目(.*)做批量非OTP国际短信接口调用请求数据准备(.*)和$")
    public void batchSmsIntDataPrepare(String name, String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        smsColumnValue = new ArrayList<String>();
        String requestId = "";
        if(json.has("requestTime")) {
            int requestTimeLength = json.getString("requestTime").length();
            String requestTime = generateRequestTime(requestTimeLength);
            json.put("requestTime",requestTime );
            logger.info("put requestTime :"+requestTime);
        }
        if(json.has("clientBatchId")) {
            int clientBatchIdLength = json.getString("clientBatchId").length();
            String clientBatchId = getRandomString(clientBatchIdLength);
            json.put("clientBatchIdLength", clientBatchId);
            logger.info("put clientBatchId :"+clientBatchId);
        }
        if(json.has("targetList")){
            JSONArray jsonJsonArray=json.getJSONArray("targetList");
            int jsonJsonArrayLength = jsonJsonArray.length();
            for (int i=0;i<jsonJsonArrayLength;i++){
                JSONObject jsonJsonArrayJsonObject = jsonJsonArray.getJSONObject(i);
                if(jsonJsonArrayJsonObject.has("requestId")){
                    int requestIdLength = jsonJsonArrayJsonObject.getString("requestId").length();
                    requestId = getRandomString(requestIdLength);
                    JSONObject jsonJsonArrayJsonObjectParams = new JSONObject();
                    jsonJsonArrayJsonObjectParams.put("testContent"," requestId="+requestId+",path="+path);
                    jsonJsonArrayJsonObject.put("requestId",requestId);
                    jsonJsonArrayJsonObject.put("params",jsonJsonArrayJsonObjectParams);
                    smsColumnValue.add(requestId);
                    logger.info("put and save requestId:"+requestId);
                }
            }
        }
        ApiAction.param = json.toString();
    }

    @Given("^项目(.*)做单一推送接口调用请求数据准备(.*)和$")
    public void siglePushDataPrepare(String name, String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        pushColumnValue = new String();
        String requestId = "";
        if(json.has("requestTime")) {
            int requestTimeLength = json.getString("requestTime").length();
            String requestTime = generateRequestTime(requestTimeLength);
            json.put("requestTime",requestTime );
            logger.info("put requestTime :"+requestTime);
        }
        if(json.has("requestId")) {
            int requestIdLength = json.getString("requestId").length();
            requestId = getRandomString(requestIdLength);
            json.put("requestId", requestId);
            pushColumnValue = requestId;
            logger.info("put and save requestId :"+requestId);
        }
        if(json.has("templateVariables")){
            JSONObject jsonObjectjsontemplateVariables=json.getJSONObject("templateVariables");
            jsonObjectjsontemplateVariables.put("testContent"," requestId="+requestId+",path="+path);
        }
        ApiAction.param = json.toString();
    }

    @Given("^项目(.*)做批量推送接口调用请求数据准备(.*)和(.*)$")
    public void pushBatchPrepare(String name,String path,String param) throws Throwable {
       // allPushRequestId = new ArrayList<String>();
        pushColumnValue = new String();
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("batchCode") ){
            int batchCodeLength = json.getString("batchCode").length();
            String batchCode = getRandomString(batchCodeLength);
            if(json.getString("batchCode").equals("repeat")){
                Connection connection = JdbcUtil.getConnection();
                PreparedStatement statement=connection.prepareStatement("select batch_code from mdpdata.mdp_push_batch where push_state='PUSH_END' order by id desc limit 1 ");
                ResultSet resultSet = statement.executeQuery();
                while(resultSet.next()) {
                    batchCode = resultSet.getString(1);
                }
                JdbcUtil.close(resultSet,statement,connection);
            }
            json.put("batchCode", batchCode );
            logger.info("batchCode:"+batchCode);
            pushColumnValue = batchCode;
        }
        if (json.has("userList") ) {
            JSONArray array = json.getJSONArray("userList");
            int index = array.length() - 1;
            for (int i = 0; i <= index; i++) {
                JSONObject jsonObject = array.getJSONObject(i);
                if(jsonObject.has("requestId") ) {
                    int requestIdLength = jsonObject.getString("requestId").length();
                    String requestId = getRandomString(requestIdLength);
                    jsonObject.put("requestId", requestId);
                    JSONObject templateVariables = jsonObject.getJSONObject("templateVariables");
                    templateVariables.put("testContent", " requestId=" + requestId);
                    logger.info("requestId: "+requestId);
                    //allPushRequestId.add(requestId);
                }
                //jsonObject.put("templateVariables",templateVariables);
            }
            //json.put("userList",array);
            ApiAction.param = json.toString();
        }
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
    }


    @Given("^项目(.*)做批量推送接口的调用请求数据准备(.*)和$")
    public void pushBatchPrepareV2(String name,String path,String param) throws Throwable {
        //allPushRequestId = new ArrayList<String>();
        pushColumnValue = new String();
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("batchCode") ){
            int batchCodeLength = json.getString("batchCode").length();
            String batchCode = getRandomString(batchCodeLength);
            if(json.getString("batchCode").equals("repeat")){
                Connection connection = JdbcUtil.getConnection();
                PreparedStatement statement=connection.prepareStatement("select batch_code from mdpdata.mdp_push_batch where push_state='PUSH_END' order by id desc limit 1 ");
                ResultSet resultSet = statement.executeQuery();
                while(resultSet.next()) {
                    batchCode = resultSet.getString(1);
                }
                JdbcUtil.close(resultSet,statement,connection);
            }
            json.put("batchCode", batchCode );
            logger.info("batchCode:"+batchCode);
            pushColumnValue = batchCode;
        }
        if (json.has("userList") ) {
            JSONArray array = json.getJSONArray("userList");
            int index = array.length() - 1;
            for (int i = 0; i <= index; i++) {
                JSONObject jsonObject = array.getJSONObject(i);
                if(jsonObject.has("requestId") ) {
                    int requestIdLength = jsonObject.getString("requestId").length();
                    String requestId = getRandomString(requestIdLength);
                    jsonObject.put("requestId", requestId);
                    JSONObject templateVariables = jsonObject.getJSONObject("templateVariables");
                    templateVariables.put("testContent", " requestId=" + requestId);
                    logger.info("requestId: "+requestId);
                    //allPushRequestId.add(requestId);
                }
                //jsonObject.put("templateVariables",templateVariables);
            }
            //json.put("userList",array);
            ApiAction.param = json.toString();
        }
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
    }

    @Given("^项目(.*)做(.*)个手机号码的批量推送接口调用请求数据准备(.*)和(.*)$")
    public void pushBatchWithMobileCountPrepare(String name,int mobileCount,String path,String param) throws Throwable {
        //allPushRequestId = new ArrayList<String>();
        pushColumnValue = new String();
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("batchCode") ){
            int batchCodeLength = json.getString("batchCode").length();
            String batchCode = getRandomString(batchCodeLength);
            json.put("batchCode", batchCode );
            logger.info("batchCode:"+batchCode);
            pushColumnValue = batchCode;
        }
        if (json.has("userList") ) {
            JSONArray array = new JSONArray();
            for (int i = 1; i <= mobileCount; i++) {
                JSONObject jsonObjectInArray = new JSONObject();
                JSONObject jsonObjectInjsonObjectInArray = new JSONObject();
                String requestId = getRandomString(32);
                jsonObjectInjsonObjectInArray.put("testContent","request="+requestId);
                jsonObjectInArray.put("templateVariables",jsonObjectInjsonObjectInArray);
                jsonObjectInArray.put("requestId",requestId);
                DecimalFormat decimalFormat = new DecimalFormat("0000");
                String mobileNo ="";
                if(i<=5){
                    mobileNo = ApiConf.getProperty("mdp_mobile_no_"+i);
                }else{
                    mobileNo = 1101234 + decimalFormat.format(i);
                }
                jsonObjectInArray.put("userNo",mobileNo);
                array.put(jsonObjectInArray);
                logger.info("requestId: "+requestId);
                //allPushRequestId.add(requestId);
                }
                json.put("userList",array);
            }
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
        String imgNumberString = (new Random().nextInt(6)+1) +".png";
        logger.info("imgNumberString:"+imgNumberString);
        if(json.has("smallImageFileUri")){
            String smallImgUrl = json.getString("smallImageFileUri").replaceFirst("\\d.png",imgNumberString);
            json.put("smallImageFileUri",smallImgUrl);
            logger.info("smallImgUrl:"+smallImgUrl);
        }
        if(json.has("bigImageFileUri")){
            String bigImgUrl = json.getString("bigImageFileUri").replaceFirst("\\d.png",imgNumberString);
            json.put("bigImageFileUri",bigImgUrl);
            logger.info("bigImgUrl:"+bigImgUrl);
        }
        ApiAction.param = json.toString();
    }



    @Given("^项目(.*)做批量短信接口时间长度为(.*)测试数据准备(.*)和(.*)$")
    public void batchPrepareWithTimeLength(String name,int timeLength,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("requestTime")) {
            json.put("requestTime", generateRequestTime(timeLength));
        }
        if (json.has("targetList")) {
            JSONArray array = json.getJSONArray("targetList");
            int index = array.length() - 1;
            for (int i = 0; i <= index; i++) {
                JSONObject jsonObject = array.getJSONObject(i);
                jsonObject.put("requestId", UUID.randomUUID().toString());
            }
            ApiAction.param = json.toString();
        }
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
    }

    @Given("^项目(.*)做包含(.*)个手机号码的批量短信接口调用数据准备(.*)和(.*)$")
    public void batchPrepareWithPhoneNum(String name,int phoneNum,String path,String param) throws Throwable {
        requestIds = new ArrayList<String>();
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        if(json.has("requestTime")) {
            json.put("requestTime", generateRequestTime());
        }
        JSONArray array = new JSONArray();
        DecimalFormat decimalFormat = new DecimalFormat("0000");
        for(int i=1;i<=phoneNum;i++) {
            String mobileNo = null;
            if (i <= 5) {
                mobileNo = ApiConf.getProperty("mdp_mobile_no_"+i);
            }else{
                mobileNo = 1101234 + decimalFormat.format(i);
            }
            logger.info("add mobileNo "+i+" :"+ mobileNo);
            String requestId = getRandomString(10);
            JSONObject jsonPhone = new JSONObject();
            JSONObject jsonParam = new JSONObject();
            jsonParam.put("testContent","path="+path+",requestId="+requestId);
            jsonPhone.put("mobileNo",mobileNo);
            jsonPhone.put("requestId", requestId);
            jsonPhone.put("params",jsonParam);
            if(path.contains("/message/batch/int")){
                jsonPhone.put("areaCode","65");
            }
            array.put(jsonPhone);
            requestIds.add(requestId);
        }

        json.put("targetList",array);
        if (json.has("clientBatchId")){
            json.put("clientBatchId",UUID.randomUUID().toString());
        }
        ApiAction.param = json.toString();
    }

    @Given("^批量短信接口包含(.*)个手机号码的请求报文准备$")
    public void allSmsPostPrepare(int mobileNoCount) throws Throwable {
        requestIds = new ArrayList<String>();
        JSONObject jsonObject = new JSONObject(ApiAction.param.toString());
        JSONArray jsonObjectTargetList = jsonObject.getJSONArray("targetList");
        DecimalFormat decimalFormat = new DecimalFormat("0000");
        JSONObject jsonObjectTargetListJsonObjectOld = jsonObjectTargetList.getJSONObject(0);
        for(int i=1;i<=mobileNoCount;i++) {
            String mobileNo = null;
            if (i <=5) {
                if(ApiAction.uri.contains("/message/batch/int") && i<=1){
                    mobileNo = "98254156";
                }else{
                    mobileNo = ApiConf.getProperty("mdp_mobile_no_"+i);
                }
            }else{
                mobileNo = 1101234 + decimalFormat.format(i);
            }
            logger.info("add mobileNo "+i+" :"+ mobileNo);
            String requestId = getRandomString(jsonObjectTargetListJsonObjectOld.getString("requestId").length());
            JSONObject jsonObjectTargetListJsonObjectNew = new JSONObject();
            JSONObject jsonObjectTargetListJsonObjectNewParam = new JSONObject();
            jsonObjectTargetListJsonObjectNewParam.put("testContent","path="+ApiAction.uri.replace(ApiConf.getProperty("mdp_ip"),"")+",requestId="+requestId);
            jsonObjectTargetListJsonObjectNew.put("mobileNo",mobileNo);
            jsonObjectTargetListJsonObjectNew.put("requestId", requestId);
            jsonObjectTargetListJsonObjectNew.put("params",jsonObjectTargetListJsonObjectNewParam);
            if(jsonObjectTargetListJsonObjectOld.has("areaCode")){
                jsonObjectTargetListJsonObjectNew.put("areaCode","65");
            }
            jsonObjectTargetList.put(i-1,jsonObjectTargetListJsonObjectNew);
            requestIds.add(requestId);
            logger.info("put and save requestId:"+requestId);
        }
        ApiAction.param = jsonObject.toString();
    }

    @Given("^项目(.*)做通过通道(.*)接口地址(.*)发送类型为(.*)的短信数据准备$")
    public void allSmsPostPrepare(String name,String channelName,String path,String smsType) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        String systemName = "";
        String templateNo = "";
        String postParam = "";
        String requestId = getRandomString(20);
        switch(channelName){
            case "创蓝":
            case "CHUANGLAN":
            case "chuanglan":
                systemName = "jmeter_chuanglan";
                break;
            case "鸿联九五":
            case "鸿联":
            case "HONGLIAN95":
            case "honglian95":
            case "HONGLIAN":
            case "honglian":
                systemName = "jmeter_honglian95";
                break;
            case "微网通联":
            case "微网":
            case "WELINK":
            case "welink":
                systemName = "jmeter_welink";
                break;
            case "梦网":
            case "MENGWANG":
            case "mengwang":
                systemName = "jmeter_mengwang";
                break;
            case "EMS":
            case "ems":
                systemName = "jmeter_ems";
                break;
            default:
                logger.error("暂时还不能识别该通道");
                throw new RuntimeException(channelName+",暂时还不能识别该通道");
        }
        logger.info("获得systemName："+systemName);
        if(smsType.equalsIgnoreCase("OTP")){
            templateNo = getTemplateNoByName(systemName,"tempOTPWithSign");
        }else if(smsType.equals("通知") || smsType.equalsIgnoreCase("system")){
            templateNo = getTemplateNoByName(systemName,"tempSystemWithSign");
        }else if(smsType.equals("营销") || smsType.equalsIgnoreCase("sales")){
            templateNo = getTemplateNoByName(systemName,"tempSalesWithSign");
        }else{
            logger.error("暂时不能识别该类型");
            throw new RuntimeException(smsType+",暂时不能识别该类型");
        }
        logger.info("获得模板编号："+ templateNo);
        if (path.equals("/message/sms") || path.equals("/message/sms/otp")){
            JSONObject jsonObject = new JSONObject();
            JSONObject jsonParam = new JSONObject();
            jsonParam.put("testContent","path="+path+",requestId="+requestId);
            jsonObject.put("params",jsonParam);
            jsonObject.put("systemName",systemName);
            jsonObject.put("requestId",requestId);
            jsonObject.put("sceneType",channelName+smsType);
            jsonObject.put("mobileNo",ApiConf.getProperty("mdp_mobile_no_1"));
            jsonObject.put("templateNo",templateNo);
            jsonObject.put("requestTime",generateRequestTime());
            postParam = jsonObject.toString();
        }else if (path.equals("/message/batch/sms")){
            JSONObject jsonObject = new JSONObject();
            JSONArray targetList = new JSONArray();
            JSONObject targetListJsonObject = new JSONObject();
            JSONObject targetListJsonObjectParams = new JSONObject();
            targetListJsonObjectParams.put("testContent","path="+path+",requestId="+requestId);
            targetListJsonObject.put("requestId",requestId);
            targetListJsonObject.put("mobileNo",ApiConf.getProperty("mdp_mobile_no_1"));
            targetListJsonObject.put("params",targetListJsonObjectParams);
            targetList.put(targetListJsonObject);
            jsonObject.put("targetList",targetList);
            jsonObject.put("systemName",systemName);
            jsonObject.put("requestId",requestId);
            jsonObject.put("sceneType",channelName+smsType);
            jsonObject.put("templateNo",templateNo);
            jsonObject.put("requestTime",generateRequestTime());
            jsonObject.put("clientBatchId",getRandomString(20));
            postParam = jsonObject.toString();
        }else {
            logger.error("暂未实现该接口，目前支持的path为/message/sms、/message/sms/otp、/message/batch/sms");
            throw new RuntimeException(path+",暂未实现该接口，目前支持的path为/message/sms、/message/sms/otp、/message/batch/sms");
        }
        ApiAction.param = postParam;
        requestIds = new ArrayList<String>();
        requestIds.add(requestId);
        logger.info("put and save requestId:"+requestId);
    }

    public String getTemplateNoByName(String systemName,String templateTitle) throws Exception {
        String url= getIp("mdp")+"/sms/templateList?systemCode="+systemName+"&title="+templateTitle;
        CloseableHttpClient closeableHttpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet(url);
        CloseableHttpResponse closeableHttpResponse = closeableHttpClient.execute(httpGet);
        String responseContent = EntityUtils.toString(closeableHttpResponse.getEntity(), Charset.forName("UTF-8"));
        logger.info(responseContent);
        JSONObject jsonObject = new JSONObject(responseContent);
        String templateNo = jsonObject.getJSONObject("_embedded").getJSONArray("smsTemplateQueryResponses").getJSONObject(0).getString("code");
        closeableHttpResponse.close();
        closeableHttpClient.close();
        logger.info("templateNo:"+templateNo);
        return templateNo;
    }

    @When("^开始调用批量接口并保存返回值messageUUID$")
    public void excBatchPostAndSaveUUID() throws Throwable {
        response= doPost();
        saveBatchUUIDs();
        logger.info("请求发送后等待十秒钟，确保入库完成####################################################");
        Thread.sleep(10000);
    }

    @When("^开始调用单接口并保存返回值messageUUID$")
    public void excSinglePostAndSaveUUID() throws Throwable {
        response= doPost();
        saveSingleUUID();
        logger.info("请求发送后等待十秒钟，确保入库完成####################################################");
        Thread.sleep(10000);
    }

    @When("^开始调用接口并保存返回值messageUUID$")
    public void excSingleOrBatchPostAndSaveUUID() throws Throwable {
        if(ApiAction.uri.contains("batch")){
            excBatchPostAndSaveUUID();
        }else {
            excSinglePostAndSaveUUID();
        }
    }

    @Then("^检查接口响应状态码(.*)$")
    public void cBatchResponseCode(int expect) throws Throwable {
        setCheckPoint(expect, statuCode);
        check();
    }

    @Then("^检查接口响应是否包含(.*)$")
    public void cBatchContains(String expect) throws Throwable {
        setCheckPoint(true, response.contains(expect));
        check();
    }

    @Then("^检查批量接口响应中(.*)的值(.*)$")
    public void cBatchResponseKeyValue(String key,String value){
        JSONObject jsonObject =new JSONObject(response);
        String actual = jsonObject.getString(key);
        setCheckPoint(value,actual);
        check();
    }

    @Then("^检查正常批量接口响应中(.*)的值(.*)$")
    public void cNormalBatchResponseKeyValue(String key,String value) throws Throwable{
        JSONObject jsonObject =new JSONObject(response);
        Set keySet = jsonObject.keySet();
        keySet.forEach(key1 -> {
            JSONObject jsonObject1 = jsonObject.getJSONObject(key1.toString());
            String actual = jsonObject1.getString(key);
            setCheckPoint(value,actual);
            logger.info("jsonKey:" + key1.toString());
            logger.info("expect=" + value + ",actual="+actual);
        });
        check();
    }

    @Then("^检查短信接口响应中(.*)的值(.*)$")
    public void cNormalSmsResponseKeyValue(String key,String value) throws Throwable{
        JSONObject jsonObject =new JSONObject(response);
        if(jsonObject.has(key)){
            String actual =jsonObject.getString(key);
            setCheckPoint(value,actual);
        }else{
            Set keySet = jsonObject.keySet();
            keySet.forEach(key1 -> {
                JSONObject jsonObject1 = jsonObject.getJSONObject(key1.toString());
                String actual = jsonObject1.getString(key);
                setCheckPoint(value,actual);
                logger.info("jsonKey:" + key1.toString());
                logger.info("expect=" + value + ",actual="+actual);
            });
        }
        check();
    }

    @Then("^检查本次短信接口调用产生的数据库表(.*)中列(.*)的值为(.*)$")
    public void cBatchDatabaseValue(String tableName,String columnName,String expectColumnValue) throws Throwable {
       saveAllLastStatus(tableName,columnName);
       if(tableName.equals("sms_request_record")){
           allRequestStatus.forEach(actualStatus ->{
               setCheckPoint(expectColumnValue,actualStatus);
           });
       }else if (tableName.equals("sms_routing_record")){
           allRouteStatus.forEach(actualStatus ->{
               setCheckPoint(expectColumnValue,actualStatus);
           });
       }else if (tableName.equals("sms_send_record")){
           allSendStatus.forEach(actualStatus ->{
               setCheckPoint(expectColumnValue,actualStatus);
           });
       }else if (tableName.equals("t_send_record")){
           allSendStatus.forEach(actualStatus ->{
               setCheckPoint(expectColumnValue,actualStatus);
           });
       }else{
           logger.info("not implemented");
       }
       if(messageUUIDs !=null) {
           logger.info("allMessageUUID:" + listToString(messageUUIDs));
       }
        if(allRequestStatus !=null) {
            logger.info("allRequestStatus:" + listToString(allRequestStatus));
        }
        if(allRouteStatus !=null) {
            logger.info("allRouteStatus:" + listToString(allRouteStatus));
        }
        if(allSendStatus !=null) {
            logger.info("allSendStatus:" + listToString(allSendStatus));
        }
       check();
    }

    @Then("^检查单接口调用产生的数据库表(.*)中列(.*)的值为(.*)$")
    public void cDatabaseValue(String tableName,String columnName,String columnValue) throws Throwable {
        saveAllLastStatus(tableName,columnName);
        if(tableName.equals("sms_request_record")){
            allRequestStatus.forEach(actualStatus ->{
                setCheckPoint(columnValue,actualStatus);
            });
        }else if (tableName.equals("sms_routing_record")){
            allRouteStatus.forEach(actualStatus ->{
                setCheckPoint(columnValue,actualStatus);
            });
        }else if (tableName.equals("sms_send_record")){
            allSendStatus.forEach(actualStatus ->{
                setCheckPoint(columnValue,actualStatus);
            });
        }else{
            logger.info("not implemented");
        }
        if(messageUUIDs !=null) {
            logger.info("allMessageUUID:" + listToString(messageUUIDs));
        }
        if(allRequestStatus !=null) {
            logger.info("allRequestStatus:" + listToString(allRequestStatus));
        }
        if(allRouteStatus !=null) {
            logger.info("allRouteStatus:" + listToString(allRouteStatus));
        }
        if(allSendStatus !=null) {
            logger.info("allSendStatus:" + listToString(allSendStatus));
        }
        check();
    }


    @Then("^检查本次推送产生的记录在数据库表(.*)中列(.*)的值为(.*)$")
    public void cThisPushDatabaseValue(String tableName,String columnName,String expectColumnValue) throws Throwable {
        logger.info("等待入库10秒钟");
        Thread.sleep(10000);
        ArrayList<String> dbValue = new ArrayList<String>();
        Connection connection = JdbcUtil.getConnection();
        Statement statement = connection.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = null;
        //下面通过path判断接口类型，单接口通过requestId来查表，批量接口通过batch_code来查表
        if (pushColumnValue != null){
            if(ApiAction.uri.contains("/push/singlePush")){
                String sql = "select "+columnName+" from "+tableName+ " where  request_id='"+pushColumnValue+"'";
                logger.info(sql);
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
                    dbValue.add(resultSet.getString(columnName));
                }
            }else if(ApiAction.uri.contains("/push/batch/send")){
                if(tableName.equalsIgnoreCase("mdpdata.mdp_push_batch")){
                    String sql = "select "+columnName+" from "+tableName+ " where batch_code='"+pushColumnValue+"'";
                    logger.info(sql);
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                        dbValue.add(resultSet.getString(columnName));
                    }
                }else if(tableName.equalsIgnoreCase("mdpdata.push_record")){
                    String sql = "select "+columnName+" from "+tableName+ " where  push_batch_id=( select id from mdpdata.mdp_push_batch where batch_code='"+pushColumnValue+"')";
                    logger.info(sql);
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                        dbValue.add(resultSet.getString(columnName));
                    }
                }else if ( tableName.equalsIgnoreCase("pushdata.push_record")) {
                    String sql = "select "+columnName+" from "+tableName+ " where  batch_id=( select id from mdpdata.mdp_push_batch where batch_code='"+pushColumnValue+"')";
                    logger.info(sql);
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                        dbValue.add(resultSet.getString(columnName));
                    }
                }else{
                    logger.error(tableName+"该表的内容检查暂未实现，目前可检查的表有mdpdata.mdp_push_batch、mdpdata.push_record、pushdata.push_record");
                }
            }else {
                logger.error("暂时无法识别该path，目前支持/push/singlePush和/push/batch/send");
            }
        }else{
            logger.error("未获得pushColumnValue，请检查");
        }
        JdbcUtil.close(resultSet,statement,connection);
        dbValue.forEach(actual ->{
            setCheckPoint(expectColumnValue,actual);
        });
        check();
    }

    //统一初始化参数入口，把一切需要动起来的参数给他动起来
    @Given("^项目(.*)做接口(.*)的请求参数初始化$")
    public void jsonDatePrepare(String name,String path,String param) throws Throwable {
        ApiAction.uri=getIp(name)+path;
        JSONObject json =new JSONObject(param);
        requestIds = new ArrayList<String>();
        String requestId = "";
        if(json.has("requestTime")) {
            int requestTimeLength = json.getString("requestTime").length();
            String requestTime = generateRequestTime(requestTimeLength);
            json.put("requestTime",requestTime );
            logger.info("put requestTime :"+requestTime);
        }
        if(json.has("requestId")) {
            int requestIdLength = json.getString("requestId").length();
            requestId = getRandomString(requestIdLength);
            json.put("requestId", requestId);
            //如果是邮件接口不能存这个requestID，否则后果不堪设想啊
            //if(!ApiAction.uri.contains("/mail/template/address/send")) {
                requestIds.add(requestId);
                logger.info("put and save requestId :" + requestId);
            //}
        }
        if(json.has("params")){
            JSONObject jsonObjectParams=json.getJSONObject("params");
            String testContent = " requestId="+requestId+",path="+path;
            jsonObjectParams.put("testContent",testContent);
            logger.info("put testContent:"+testContent);
        }
        //批量短信
        if(json.has("clientBatchId")){
            int clientBatchIdLength = json.getString("clientBatchId").length();
            String clientBatchId = getRandomString(clientBatchIdLength);
            json.put("clientBatchId",clientBatchId);
            logger.info("put clientBatchId::"+clientBatchId);
        }
        if(json.has("targetList")){
            JSONArray jsonArray = json.getJSONArray("targetList");
            for(int i=0;i<jsonArray.length();i++){
                JSONObject jsonObject = jsonArray.getJSONObject(i);
                if(path.contains("/mail/template/address/send")){
                    int clientRequestIdLength = jsonObject.getString("clientRequestId").length();
                    requestId = getRandomString(clientRequestIdLength);
                    jsonObject.put("clientRequestId",requestId);
                    //requestIds.add(requestId);
                    logger.info("put and don't save clientRequestId :"+requestId);
                }else{
                    int requestIdLength = jsonObject.getString("requestId").length();
                    requestId = getRandomString(requestIdLength);
                    jsonObject.put("requestId",requestId);
                    requestIds.add(requestId);
                    logger.info("put and save requestId :"+requestId);
                }
                if(jsonObject.has("params")){
                    JSONObject jsonObjectParams=jsonObject.getJSONObject("params");
                    String testContent = " requestId="+requestId+",path="+path;
                    jsonObjectParams.put("testContent",testContent);
                    logger.info("put testContent:"+testContent);
                }
            }
        }
        //批量推送
        if(json.has("batchCode")){
            int batchCodeLength = json.getString("batchCode").length();
            String batchCode = getRandomString(batchCodeLength);
            json.put("batchCode",batchCode);
            logger.info("put batchCode:"+batchCode);
        }
        if(json.has("userList")){
            JSONArray jsonArray = json.getJSONArray("userList");
            for(int i=0;i<jsonArray.length();i++){
                JSONObject jsonObject = jsonArray.getJSONObject(i);
                int requestIdLength = jsonObject.getString("requestId").length();
                requestId = getRandomString(requestIdLength);
                jsonObject.put("requestId",requestId);
                requestIds.add(requestId);
                logger.info("put and save requestId :"+requestId);
            }
        }
        ApiAction.param = json.toString();
    }

    @Given("^用例标题为(.*)$")
    public void printCaseTitle(String caseTitle) throws Throwable {
        logger.info(caseTitle);
    }

    @Given("^增加或修改参数中path为(.*)的参数的值为指定字符串(.*)$")
    public void addOrUpdateJsonByJsonPathAndString(String jsonPath,String value) throws Throwable {
        logger.info("jsonPath:"+jsonPath);
        logger.info("增加或修改前ApiAction.param:"+ApiAction.param);
        com.alibaba.fastjson.JSONObject jsonObject = com.alibaba.fastjson.JSON.parseObject(ApiAction.param.toString());
        JSONPath.set(jsonObject,jsonPath,value);
        ApiAction.param = jsonObject.toJSONString();
        logger.info("增加或修改后ApiAction.param:"+ApiAction.param);
        updateSavedRequestIds(jsonPath,value);
    }

    @Given("^增加或修改参数中path为(.*)的参数的值为指定长度(.*)的随机字符串$")
    public void addOrUpdateJsonByJsonPathAndStringLength(String jsonPath,int stringLength) throws Throwable {
        //如果是修改过requestId，建议后面就不要再做数据库校验了
        logger.info("jsonPath:"+jsonPath);
        logger.info("增加或修改前ApiAction.param:"+ApiAction.param);
        com.alibaba.fastjson.JSONObject jsonObject = com.alibaba.fastjson.JSON.parseObject(ApiAction.param.toString());
        String randomStringByLength = getRandomString(stringLength);
        logger.info(randomStringByLength);
        JSONPath.set(jsonObject,jsonPath,randomStringByLength);
        ApiAction.param = jsonObject.toJSONString();
        logger.info("增加或修改后ApiAction.param:"+ApiAction.param);
        updateSavedRequestIds(jsonPath,randomStringByLength);
    }

    @Given("^增加或修改参数中path为(.*)的参数的值为指定长度(.*)的时间戳$")
    public void addOrUpdateJsonByJsonPathAndTimeLength(String jsonPath,int timeLength) throws Throwable {
        logger.info("jsonPath:"+jsonPath);
        logger.info("增加或修改前ApiAction.param:"+ApiAction.param);
        com.alibaba.fastjson.JSONObject jsonObject = com.alibaba.fastjson.JSON.parseObject(ApiAction.param.toString());
        String timeValue = generateRequestTime(timeLength);
        logger.info(timeValue);
        JSONPath.set(jsonObject,jsonPath,timeValue);
        ApiAction.param = jsonObject.toJSONString();
        logger.info("增加或修改后ApiAction.param:"+ApiAction.param);
        updateSavedRequestIds(jsonPath,timeValue);
    }

    @Given("^删除参数中path为(.*)的元素$")
    public void deleteJsonNodeByJsonPath(String jsonPath) throws Throwable {
        logger.info("jsonPath:"+jsonPath);
        logger.info("删除前ApiAction.param:"+ApiAction.param);
        com.alibaba.fastjson.JSONObject jsonObject = com.alibaba.fastjson.JSON.parseObject(ApiAction.param.toString());
        JSONPath.remove(jsonObject,jsonPath);
        ApiAction.param = jsonObject.toJSONString();
        logger.info("删除后ApiAction.param:"+ApiAction.param);
    }

    //本方法将上面4个方法整合到一个里面，目的为实现万能修改
    @Given("^修改参数——修改类型为(.*)参数path为(.*)值为(.*)$")
    public void universalAlterParam(String alterType,String jsonPath,String alterValue) throws Throwable {
        logger.info(alterType);
        switch(alterType){
            case "指定字符串":
                addOrUpdateJsonByJsonPathAndString(jsonPath,alterValue);
                break;
            case "指定长度随机字符串":
                //修改类型为指定长度随机字符串时，alterValue为字符串长度
                addOrUpdateJsonByJsonPathAndStringLength(jsonPath,Integer.valueOf(alterValue));
                break;
            case "指定长度时间戳":
                //修改类型为指定长度时间戳时，alterValue为时间戳长度
                addOrUpdateJsonByJsonPathAndTimeLength(jsonPath,Integer.valueOf(alterValue));
                break;
            case "删除":
                deleteJsonNodeByJsonPath(jsonPath);
                break;
            default:
                logger.error("暂不支持该修改类型。。。目前支持：指定字符串、指定长度随机字符串、指定长度时间戳、删除");
                throw new RuntimeException("暂不支持该修改类型。。。目前支持：指定字符串、指定长度随机字符串、指定长度时间戳、删除");
        }

         /*
        if(alterType.equals("指定字符串")){
            addOrUpdateJsonByJsonPathAndString(jsonPath,alterValue);
        }else if(alterType.equals("指定长度随机字符串")){
            addOrUpdateJsonByJsonPathAndStringLength(jsonPath,Integer.valueOf(alterValue));
        }else if(alterType.equals("指定长度时间戳")){
            addOrUpdateJsonByJsonPathAndTimeLength(jsonPath,Integer.valueOf(alterValue));
        }else if(alterType.equals("删除")){
            deleteJsonNodeByJsonPath(jsonPath);
        }else {
            logger.error("暂不支持该修改类型。。。目前支持：指定字符串、指定长度随机字符串、指定长度时间戳、删除");
        }
        */

    }

    //为应对修改requestID还需要查数据库的测试需求，现增加修改requestId后替换之前存的requesID的方法
    public void updateSavedRequestIds(String jsonPath,String newRequestId){
        /*
        //jsonPath中包含requestId或clientRequestId时走这里
        if(jsonPath.contains("requestId") || jsonPath.contains("clientRequestId")){
            if(ApiAction.uri.contains("/mail/template/address/send")||ApiAction.uri.contains("/message/batch/int")||
                    ApiAction.uri.contains("/message/batch/sms")){
                //批量接口和邮件接口走这里
                Pattern pattern = Pattern.compile("\\[(\\d+)\\]");
                Matcher matcher = pattern.matcher(jsonPath);
                int requestIdIndex = 9999;
                if(matcher.find()){
                    requestIdIndex = Integer.valueOf(matcher.group(1));
                    logger.info("get old reqestId index :"+requestIdIndex);
                    logger.info("change saved requesId:"+requestIds.get(requestIdIndex)+" to new requestId: "+newRequestId);
                    requestIds.remove(requestIdIndex);
                    requestIds.set(requestIdIndex,newRequestId);
                }
            }else{
                //单接口走这里
                logger.info("change saved requesId : "+requestIds.get(0)+" to new requestID: "+newRequestId);
                requestIds.remove(0);
                requestIds.add(newRequestId);
            }
        }
        */
        if(jsonPath.contains("requestId")){
            if(ApiAction.uri.contains("/message/batch/int") || ApiAction.uri.contains("/message/batch/sms")){
                //批量接口走这里
                Pattern pattern = Pattern.compile("\\[(\\d+)\\]");
                Matcher matcher = pattern.matcher(jsonPath);
                int requestIdIndex = 9999;
                if(matcher.find()){
                    requestIdIndex = Integer.valueOf(matcher.group(1));
                    logger.info("get old reqestId index :"+requestIdIndex);
                    logger.info("change saved requesId:"+requestIds.get(requestIdIndex)+" to new requestId: "+newRequestId);
                    requestIds.remove(requestIdIndex);
                    //刚测试了一下list.size=0时set会报错，所以加个判断吧
                    if(requestIds.size()==0) {
                        requestIds.add( newRequestId);
                    }else{
                        requestIds.set(requestIdIndex, newRequestId);
                    }
                }
            }else{
                //单接口走这里
                logger.info("change saved requesId : "+requestIds.get(0)+" to new requestID: "+newRequestId);
                requestIds.remove(0);
                requestIds.add(newRequestId);
            }
        }
    }

    @When("^开始执行post请求然后等待(.*)秒$")
    public void excutePostAndWait(int seconds) throws Throwable{
        response= doPost();
        logger.info("请求发送后等待"+seconds+"秒钟，确保入库完成####################################################");
        Thread.sleep(seconds*1000);
    }

    //终极sql检查入口
    @Then("^检查本次接口调用产生的记录在数据库表(.*)中列(.*)的值为(.*)$")
    public void cFinalDatabaseCheck(String tableName,String columnName,String expectColumnValue) throws Throwable {
        ArrayList<String> dbValue = new ArrayList<String>();
        //这里解释一下关于预期结果传值的处理，如果是少量的不同的结果，是全部输入到最后面，用英文逗号分隔，切记是英文逗号
        //如果是若干个相同的结果就把结果输到最后然后跟上×和预期结果的数量，切记符号不要搞错啦，不然出错了后果自负哈
        //这里给个例子，假如校验结果第一个是send_ok第二个是send_fail，那么最后面就这样写send_ok,send_fail
        //假如校验结果是5个send_ok，那么最后面就这样写send_ok×5
        String[] expectdbValue = expectColumnValue.split(",");
        ArrayList<String> expectdbValueList = new ArrayList<String>();
        for(int i=0;i<expectdbValue.length;i++){
            expectdbValueList.add(expectdbValue[i]);
        }
        if(expectColumnValue.contains("×")) {
            Pattern pattern = Pattern.compile("(.*)×(\\d+)");
            Matcher matcher = pattern.matcher(expectColumnValue);
            String getExpectValueByRegular = "";
            int getExpectValueCount = 0;
            if(matcher.find()){
                logger.info("match 1:"+matcher.group(1));
                logger.info("match 2:"+matcher.group(2));
                getExpectValueByRegular=matcher.group(1);
                getExpectValueCount=Integer.valueOf(matcher.group(2));
                expectdbValueList = new ArrayList<String>();
                for(int i=0;i<getExpectValueCount;i++){
                    expectdbValueList.add(getExpectValueByRegular);
                }
            }
        }
        //如果是短信记录查询则在表名后面加上当天的年月日
        String tableNameSuffix = "";
        if(tableName.matches("recorddata\\.sms_.*")){
            //tableName = tableName+new SimpleDateFormat("_yyyyMMdd").format(Calendar.getInstance().getTime());
            tableNameSuffix = DateTimeFormatter.ofPattern("_yyyyMMdd").format(LocalDateTime.now());
            tableName = tableName + tableNameSuffix;
        }

        Connection connection = JdbcUtil.getConnection();
        Statement statement = connection.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = null;
        //下面通过path判断接口类型，推送、短信、国际短信、单、批量接口以后统统走这里检查数据库落库情况
        //短信所有接口都通过遍历requestID查询三张记录表
        //推送单接口查表mdpdata.push_record、pushdata.push_record的sql类似，写到一起
        //推送批量接口查表mdpdata.mdp_push_batch、mdpdata.push_record、pushdata.push_record由于嵌套子查询sql的字段不统一所以要分开写
        //expectColumnValue如果为空则不校验
        if(expectColumnValue.equals("")){
            expectdbValueList.clear();
        }else if (requestIds != null){
            for (String requestId : requestIds) {
                if (ApiAction.uri.contains("message")) {
                    logger.info("短信落库检查");
                    if (tableName.contains("recorddata.sms_request_record") || tableName.contains("recorddata.sms_send_record")) {
                        String sql = "select " + columnName + " from " + tableName + " where request_id = '" + requestId + "'";
                        /*
                        logger.info(sql);
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                            logger.info("get result :"+resultSet.getString(columnName));
                            if (resultSet.isLast()) {
                                dbValue.add(resultSet.getString(columnName));
                            }
                        }
                        */
                        selectDb(sql,statement,resultSet,columnName,dbValue,1);
                    } else if (tableName.contains("recorddata.sms_routing_record")) {
                        String sql = "select " + columnName + " from " + tableName + " where message_uuid = (select message_uuid from recorddata.sms_request_record"+tableNameSuffix+" where request_id='" + requestId + "')";
                        /*
                        logger.info(sql);
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                            logger.info("get result :"+resultSet.getString(columnName));
                            dbValue.add(resultSet.getString(columnName));
                        }
                        */
                        selectDb(sql,statement,resultSet,columnName,dbValue,1);
                    } else {
                        logger.error("暂未实现该表的检查，目前仅支持recorddata.sms_request_record、recorddata.sms_routing_record、recorddata.sms_send_record");
                        throw new RuntimeException("暂未实现该表的检查，目前仅支持recorddata.sms_request_record、recorddata.sms_routing_record、recorddata.sms_send_record");
                    }
                } else if (ApiAction.uri.contains("push")) {
                    logger.info("推送落库检查");
                    if(ApiAction.uri.contains("/push/singlePush")){
                        String sql = "select "+columnName+" from "+tableName+ " where  request_id='"+requestId+"'";

                        /*
                        logger.info(sql);
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                            logger.info("get result :"+resultSet.getString(columnName));
                            dbValue.add(resultSet.getString(columnName));
                        }
                        */
                        selectDb(sql,statement,resultSet,columnName,dbValue,1);
                    }else if(ApiAction.uri.contains("/push/batch/send")) {
                        if (tableName.equalsIgnoreCase("mdpdata.mdp_push_batch")) {
                            logger.info("该表每次批量接口调用查一次就行了");
                            String sql = "select " + columnName + " from " + tableName + " where id=(select push_batch_id from mdpdata.push_record where request_id='" + requestId + "')";
                            /*
                            logger.info(sql);
                            resultSet = statement.executeQuery(sql);
                            while (resultSet.next()) {
                                logger.info("get result :"+resultSet.getString(columnName));
                                dbValue.add(resultSet.getString(columnName));
                            }
                            break;
                            */
                            selectDb(sql,statement,resultSet,columnName,dbValue,1);
                        } else if (tableName.equalsIgnoreCase("mdpdata.push_record") || tableName.equalsIgnoreCase("pushdata.push_record")) {
                            String sql = "select " + columnName + " from " + tableName + " where  request_id='" + requestId + "'";
                            /*
                            logger.info(sql);
                            resultSet = statement.executeQuery(sql);
                            while (resultSet.next()) {
                                logger.info("get result :"+resultSet.getString(columnName));
                                dbValue.add(resultSet.getString(columnName));
                            }
                            */
                            selectDb(sql,statement,resultSet,columnName,dbValue,1);
                        } else {
                            logger.error(tableName + "该表的内容检查暂未实现，目前可检查的表有mdpdata.mdp_push_batch、mdpdata.push_record、pushdata.push_record");
                            throw new RuntimeException(tableName + "该表的内容检查暂未实现，目前可检查的表有mdpdata.mdp_push_batch、mdpdata.push_record、pushdata.push_record");
                        }
                    }
                } else if(ApiAction.uri.contains("mail")){
                    logger.info("邮件落库检查");
                    if (tableName.equalsIgnoreCase("mdp_mail.t_send_record") || tableName.equalsIgnoreCase("mdp_mail.t_report_record") ) {
                        String sql = "select " + columnName + " from " + tableName + " where request_id = '" + requestId + "'";
                        /*
                        logger.info(sql);
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                            logger.info("get result :"+resultSet.getString(columnName));
                            if (resultSet.isLast()) {
                                dbValue.add(resultSet.getString(columnName));
                            }
                        }
                        */
                        selectDb(sql,statement,resultSet,columnName,dbValue,1);
                    } else {
                        logger.error("暂未实现该表的检查，目前仅支持mdp_mail.t_send_record、mdp_mail.t_report_record");
                        throw new RuntimeException("暂未实现该表的检查，目前仅支持mdp_mail.t_send_record、mdp_mail.t_report_record");
                    }
                } else {
                    logger.error("暂未实现。。。");
                    throw new RuntimeException("该表的检查暂未实现哦，有兴趣可以在这里加一下");
                }
            }
        }else{
            logger.error("未获得requestIds，请检查是否保存过或者被修改过了");
            throw new RuntimeException("未获得requestIds，请检查是否保存过或者被修改过了");
        }
        JdbcUtil.close(resultSet,statement,connection);

        /*
        //如果dbValue.size是0则未查到记录，不进下面的循环，不做检查
        for(int i=0;i<dbValue.size();i++){
            //为了应对一个批量请求多个号码，每个号码对应的记录不一样的情况（比如批量接口发送，其中一个号码是黑名单号码），
            // 需要按英文逗号分隔，按顺序将预期结果输入，
            // 另外如果要把有记录和无记录的一起测，需要把不产生数据库记录的号码放在后面，例如：
            //要测一个批量接口输入正常号码和黑名单号码，则参数中正常号码在先，黑名单号码在后
            //因为黑名单号码可能不会产生send_record和routing_record
            //如果查到的结果数大于输入的预期结果数则默认认为这次预期结果是一样的，
            // 所有查询到的结果与输入的第一个预期结果进行比较，否则就一对一进行比
            // 较，例如：接口调用参数里输入了2个号码，预期结果只输入了一个结果，那么默认认为这2个号码的预期结果都是这
            // 个，如果接口调用参数里输入了2个号码，预期结果也输入了2个，那么第一个结果和第一个输入比较，第二个结果
            //和第2个输入比较
            if(dbValue.size()>expectdbValue.length){
                setCheckPoint(expectdbValue[0],dbValue.get(i));
            }else{
                setCheckPoint(expectdbValue[i],dbValue.get(i));
            }
        }
        */
        //突然发现上面的做法不合理，因为没查到记录就直接pass了，应该查不到记录就fail掉，所以多记录查询必须一对一输入，用逗号分隔
        for(int i=0;i<expectdbValueList.size();i++){
            //如果是邮件状态校验，预期是发送成功则ROUTE_OK和ROUTE_FAIL也算通过
            //if (tableName.equalsIgnoreCase("mdp_mail.t_send_record") && expectdbValueList.get(i).equals("发送成功")){
            //    setCheckPoint(true,dbValue.get(i).contains("发送成功")||dbValue.get(i).contains("ROUTE_OK")||dbValue.get(i).contains("ROUTE_FAILED"));
           // }else{
                setCheckPoint(expectdbValueList.get(i), dbValue.get(i));
           // }

        }
        check();
    }

    //查库部分抽出来，没查到等待若干秒再查
    public void selectDb(String sql,Statement statement,ResultSet resultSet,String columnName,ArrayList<String> dbValue,int selectCount) throws Exception {
        logger.info(sql);
        resultSet = statement.executeQuery(sql);
        String dbSelectResult = null;
        while (resultSet.next()) {
            dbSelectResult = resultSet.getString(columnName);
            logger.info("get result :"+dbSelectResult);
            if (resultSet.isLast()) {
                dbValue.add(dbSelectResult);
            }
        }
        if(dbSelectResult == null && selectCount<=6){
            logger.info("没查到东西，等待"+selectCount+"秒再查。。。");
            Thread.sleep(selectCount*1000);
            selectDb(sql,statement,resultSet,columnName,dbValue,selectCount+1);
        }
    }

    @Then("^检查响应正文中是否包含(.*)$")
    public void checkResponseIsContains(String expectValue) throws Throwable{
        setCheckPoint(true,response.contains(expectValue));
        check();
    }

    @Then("^检查响应报文中jsonPath为(.*)的节点值是否包含(.*)$")
    public void checkResponseJsonNodeValueIsContains(String jsonPath,String containsValue) throws Throwable{
        com.jayway.jsonpath.Configuration configuration = com.jayway.jsonpath.Configuration.defaultConfiguration();
        configuration = configuration.addOptions(Option.REQUIRE_PROPERTIES, Option.ALWAYS_RETURN_LIST);
        List<Object> list = com.jayway.jsonpath.JsonPath.compile(jsonPath).read(response,configuration);
        for(Object object:list){
            String actualValue = object.toString();
            logger.info("actualValue:"+actualValue+",containsValue: "+containsValue);
            setCheckPoint(true,actualValue.contains(containsValue));
        }
        check();
        /*
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(response);
        String actualValue = JSONPath.eval(jsonObject,jsonPath).toString();
        setCheckPoint(true,actualValue.contains(containsValue));
        check();
        */
    }

    @Then("^检查响应报文中jsonPath为(.*)的节点值是否匹配(.*)$")
    public void checkResponseJsonNodeValueIsMatchs(String jsonPath,String regExp) throws Throwable{
        com.jayway.jsonpath.Configuration configuration = com.jayway.jsonpath.Configuration.defaultConfiguration();
        configuration = configuration.addOptions(Option.REQUIRE_PROPERTIES, Option.ALWAYS_RETURN_LIST);
        List<Object> list = com.jayway.jsonpath.JsonPath.compile(jsonPath).read(response,configuration);
        for(Object object:list){
            String actualValue = object.toString();
            logger.info("actualValue:"+actualValue+",regExp: "+regExp);
            setCheckPoint(true,actualValue.matches(regExp));
        }
        check();
        /*
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(response);
        String actualValue = JSONPath.eval(jsonObject,jsonPath).toString();
        logger.info(actualValue);
        setCheckPoint(true,actualValue.matches(regExp));
        check();
        */
    }

    @Then("^检查响应报文中jsonPath为(.*)的节点值为(.*)$")
    public void checkResponseJsonNodeValue(String jsonPath,String nodeValue) throws Throwable{
        com.jayway.jsonpath.Configuration configuration = com.jayway.jsonpath.Configuration.defaultConfiguration();
        configuration = configuration.addOptions(Option.REQUIRE_PROPERTIES, Option.ALWAYS_RETURN_LIST);
        List<Object> list = com.jayway.jsonpath.JsonPath.compile(jsonPath).read(response,configuration);
        for(Object object:list){
            if(nodeValue.equalsIgnoreCase("true")||nodeValue.equalsIgnoreCase("false")){
                Boolean expectValue = Boolean.valueOf(nodeValue);
                setCheckPoint(expectValue,object);
            }else {
                setCheckPoint(nodeValue, object.toString());
            }
        }
        check();
        /*
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(response);
        Object actualValue = JSONPath.eval(jsonObject,jsonPath);
        if(nodeValue.equalsIgnoreCase("true")||nodeValue.equalsIgnoreCase("false")){
            Boolean expectValue = Boolean.valueOf(nodeValue);
            setCheckPoint(expectValue,actualValue);
        }else {
            setCheckPoint(nodeValue, actualValue.toString());
        }
        check();
        */
    }

    @Then("^检查响应报文中jsonPath为(.*)是否存在节点名为(.*)的节点$")
    public void checkResponseJsonNodeKeyIsExist(String jsonPath,String keyName) throws Throwable{
        com.jayway.jsonpath.Configuration configuration = com.jayway.jsonpath.Configuration.defaultConfiguration();
        configuration = configuration.addOptions(Option.REQUIRE_PROPERTIES, Option.ALWAYS_RETURN_LIST);
        List<Object> listString = com.jayway.jsonpath.JsonPath.compile(jsonPath).read(response,configuration);
//        List<Map<String, Object>> listString = com.jayway.jsonpath.JsonPath
//                .using(configuration)
//                .parse(response)
//                .read(jsonPath, List.class);
        for(Object object:listString){
            logger.info(response);
            logger.info(jsonPath);
            logger.info(object.toString());
            JSONObject jsonObject = new JSONObject(object.toString().replaceAll("=",":"));
            boolean actual = jsonObject.has(keyName);
            setCheckPoint(true,actual);
        }
        check();
    }

    @Then("^检查接口响应——检查类型为(.*)节点path为(.*)预期结果为(.*)$")
    public void checkMdpRespons(String checkType,String jsonPath,String expectValue) throws Throwable{
        logger.info(checkType);
        switch (checkType){
            case "响应正文是否包含":
                checkResponseIsContains(expectValue);
                break;
            case "节点值是否包含":
                checkResponseJsonNodeValueIsContains(jsonPath,expectValue);
                break;
            case "节点值是否匹配":
                checkResponseJsonNodeValueIsMatchs(jsonPath,expectValue);
                break;
            case "节点值是否等于":
                checkResponseJsonNodeValue(jsonPath,expectValue);
                break;
            case "节点名是否存在":
                checkResponseJsonNodeKeyIsExist(jsonPath,expectValue);
                break;
            default:
                logger.error("暂不支持该类型的检查，目前支持：响应正文是否包含、节点值是否包含、节点值是否匹配、节点值是否等于、节点名是否存在");
                throw new RuntimeException("暂不支持该类型的检查，目前支持：响应正文是否包含、节点值是否包含、节点值是否匹配、节点值是否等于、节点名是否存在");
        }
    }

    @After("@debug")
    public void addSomeThingToReport(Scenario s){
        try {
            s.embed("<a href=\"http://10.214.176.65/jenkins/view/ump%E6%B6%88%E6%81%AF%E5%B9%B3%E5%8F%B0%E8%87%AA%E5%8A%A8%E5%8C%96/job/mdp-app-test-zhaoshuying/HTML_Report/ \" target=\"_self\">log</a>".getBytes("utf-8"),"text/html");
            s.embed(com.jayway.jsonpath.internal.JsonFormatter.prettyPrint(param.toString()).getBytes("utf-8"),"application/json");
            s.write("request url: \r\n"+ApiAction.uri);
            s.write("request param: \r\n"+com.jayway.jsonpath.internal.JsonFormatter.prettyPrint(param.toString()));
            s.write("response: \r\n"+com.jayway.jsonpath.internal.JsonFormatter.prettyPrint(response));
        } catch (Exception e) {
            logger.error(e);
        }

    }

    @Test
    public void testArrayList(){
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add("a");
        logger.info(arrayList.size());
        arrayList.remove(0);
        logger.info(arrayList.size());
        arrayList.set(0,"b");
        logger.info(arrayList.size());
    }

    @Test
    public void testJsonPath(){
        String a = "{1:{a:10,b:20,c:\"10\"},2:{a:11,b:21,c:31},3:{a:12},4:[4:{e:1,f:2},5:{g:1,h:2}]}";
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(a);
        logger.info(jsonObject);
        //logger.info(new JSONPath("$@.a").contains(jsonObject));
        logger.info(new JSONPath("$.4").contains(jsonObject));
        logger.info(new JSONPath("$.1").containsValue(jsonObject,"10"));
        logger.info(new JSONPath("$.1.a").containsValue(jsonObject,10));
        logger.info(new JSONPath("$.1.c").containsValue(jsonObject,"10"));
        logger.info(new JSONPath("$.1").getPath());
        logger.info(new JSONPath("$.2").eval(jsonObject));
        logger.info(JSONPath.size(jsonObject,"$*"));
        logger.info(JSONPath.contains(jsonObject,"$[*].a"));
        logger.info(JSONPath.contains(jsonObject,"$[1].a"));
        logger.info(JSONPath.contains(jsonObject,"$[1].a.c"));
        com.jayway.jsonpath.Configuration configuration = com.jayway.jsonpath.Configuration.defaultConfiguration();
        configuration = configuration.addOptions(Option.REQUIRE_PROPERTIES, Option.ALWAYS_RETURN_LIST);
        for(com.jayway.jsonpath.Option option:configuration.getOptions()){
            System.out.print(option.toString());
        }
        List<Object> listString = com.jayway.jsonpath.JsonPath.compile("$.*").read(a,configuration);
        for(Object s:listString)System.out.print(s.toString());
        System.out.println();
        List<Object> listString1 = com.jayway.jsonpath.JsonPath.compile("$..a").read(a,configuration);
        for(Object s:listString1)System.out.println(s.toString()+"|");
    }

    @Test
    public void testRegExp(){
        logger.info("aav2d".matches("^\\w{5}$"));
        String[] testString = "a,b,c".split(",");
        ArrayList<String> testArrayList = new ArrayList<String>();
        testArrayList.add("aa");
        testArrayList.add("bb");
        Matcher matcher = Pattern.compile("\\[(\\d+)\\]").matcher("$.targetList[1].requestId");
        if(matcher.find()){
            logger.info(matcher.group(1));
        }
    }

    @Test
    public void printStringLength(){
        logger.info("path=/message/sms,requestId=jbrtdyhqjg-梦网-OTP【万达】".length());
        logger.info("9db2cf2f4a88437892b93d32371a7581".matches("^\\w{32}$"));
        logger.info(DateTimeFormatter.BASIC_ISO_DATE.format(LocalDateTime.now()));
        logger.info(new SimpleDateFormat("_yyyyMMdd").format(Calendar.getInstance().getTime()));
        logger.info(DateTimeFormatter.ofPattern("_yyyyMMdd").format(LocalDateTime.now()));
        logger.info("recorddata.sms_request_record".matches("recorddata\\.sms_.*"));
    }

}
