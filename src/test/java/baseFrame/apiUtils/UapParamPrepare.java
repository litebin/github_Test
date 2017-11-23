package baseFrame.apiUtils;

import org.json.JSONObject;

/**
 * Created by yaolei on 2017/8/17.
 */
public class UapParamPrepare extends RequestUtils {

    /**
     * @return
     * @TODO 设置UAP接口测试header
     * @parameter @param index
     * @parameter @param jsonObject
     */
    public String paramSet(String type,JSONObject jsonObject){
        JSONObject json  =jsonObject.getJSONObject("reqHeader");
        switch (type){
            case "99bill": json.put("appId", ApiConf.getProperty("appId_99bill"));
                json.put("entityId", ApiConf.getProperty("entityId_99bill"));
                json.put("accessToken", ApiConf.getProperty("accessToken_99bill"));
                break;
            case "ffan":
                json.put("appId", ApiConf.getProperty("appId_ffan"));
                json.put("entityId", ApiConf.getProperty("entityId_ffan"));
                json.put("accessToken", ApiConf.getProperty("accessToken_ffan"));
                break;
            case "uap":
                json.put("appId", ApiConf.getProperty("appId_uap"));
                json.put("entityId", ApiConf.getProperty("entityId_uap"));
                json.put("accessToken", ApiConf.getProperty("accessToken_uap"));
                break;
            case "wandacredit":
                json.put("appId", ApiConf.getProperty("appId_wandacredit"));
                json.put("entityId", ApiConf.getProperty("entityId_wandacredit"));
                json.put("accessToken", ApiConf.getProperty("accessToken_wandacredit"));
                break;
            case "wdwealthapp":
                json.put("appId", ApiConf.getProperty("appId_wdwealthapp"));
                json.put("entityId", ApiConf.getProperty("entityId_wdwealthapp"));
                json.put("accessToken", ApiConf.getProperty("accessToken_wdwealthapp"));
                break;
            case "wandaloans":
                json.put("appId", ApiConf.getProperty("appId_wandaloans"));
                json.put("entityId", ApiConf.getProperty("entityId_wandaloans"));
                json.put("accessToken", ApiConf.getProperty("accessToken_wandaloans"));
                break;
        }
        return jsonObject.toString();

    }
}
