package apiTask.uppStep;



import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;

public class HttpPostDemo {

    public static void main(String[] args)
    {

        Map<String,String> params = new HashMap<String,String>();
        String url = "http://10.214.170.45:8081/sgw/v1/envs/uat/apps";
        params.put("systemId", "SmokeTestSys");
        params.put("appId", "demoxu02");
        params.put("pubEndpoints", "http://10.214.170.52/demoxu02,http://10.214.170.52:81/demoxu02qaz");
        params.put("upstreamRootPath", "/demo");

        doPost(url, params);
    }

    public static void doPost(String url,Map<String,String> params){

        HttpClient hc = createHttpClient();
        HttpPost hp = new HttpPost(url);
        if(params!=null){

            Gson gson = new Gson();
            String content = gson.toJson(params);

            System.out.println(content);
            StringEntity entity = new StringEntity(content,"utf-8");//解决中文乱码问题
            entity.setContentEncoding("UTF-8");
            entity.setContentType("application/json");

            hp.setEntity(entity);
        }
        try {

            System.out.println("======================Response======================");

            HttpResponse hr = hc.execute(hp);

            String content = EntityUtils.toString(hr.getEntity());

            System.out.println(content);


        } catch (ClientProtocolException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static HttpClient createHttpClient(){
        HttpClient hc = new DefaultHttpClient();
        return hc;
    }

}
