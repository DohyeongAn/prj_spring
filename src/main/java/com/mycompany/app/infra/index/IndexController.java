package com.mycompany.app.infra.index;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class IndexController {

    @RequestMapping("/biographyUsrView")
    public String biographyUsrView() {
        return "user/infra/biography/biographyUserView";
    }
   @RequestMapping("/about")
    public String about() {
        return "user/infra/biography/about";
    }

//    @RequestMapping("/dodomall")
//    public String dodomall() {
//        return "user/infra/index/dodomall";
//    }

    @RequestMapping("/limited_price")
    public String limited_price() {
        return "user/infra/index/limited_price";
    }



    @RequestMapping(value = "/")
    public String index() {
        // 여기에서 서버단에 필요한 작업을 수행한다.

        // 아래의 jsp 파일 호출
        return "user/infra/biography/biographyUserView";
    }

    @RequestMapping(value = "/login")
    public String login() {
        // 여기에서 서버단에 필요한 작업을 수행한다.

        // 아래의 jsp 파일 호출
        return "user/infra/index/login";
    }

    @RequestMapping(value = "/join")
    public String join(){

        return "user/infra/index/join";
    }

    @RequestMapping(value = "/adminLogin")
    public String adminLogin(){

        return "admin/infra/codegroup/adminLogin";
    }

    @RequestMapping(value = "/publicCorona1List")
    public String publicCorona1List(Model model)throws Exception{
        System.out.println("publicCorona1List");

        String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=B4x4crhaYijCQu%2F2tJgtR5rlwDa%2BwPJSgML%2BL5D1PWJpM%2FHQmchJ9%2Fz90QQzrXYN313hMYPzZVLJAJUKWZDU%2Fg%3D%3D&type=json";

        URL url = new URL(apiUrl);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod("GET");

        BufferedReader bufferedReader;
        if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        }

        StringBuilder stringBuilder = new StringBuilder();
        String line;
        while ((line = bufferedReader.readLine()) != null) {
            System.out.println("line: " + line);
            stringBuilder.append(line);
        }

        bufferedReader.close();
        httpURLConnection.disconnect();

        ObjectMapper objectMapper = new ObjectMapper();

        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);

        System.out.println("######## Map");
        for (String key : map.keySet()) {
            String value = String.valueOf(map.get(key));	// ok
            System.out.println("[key]:" + key + ", [value]:" + value);
        }


        Map<String, Object> header = new HashMap<String, Object>();
        header = (Map<String, Object>) map.get("header");

        System.out.println("######## Header");
        for (String key : header.keySet()) {
            String value = String.valueOf(header.get(key));	// ok
            System.out.println("[key]:" + key + ", [value]:" + value);
        }

        String aaa = (String) header.get("resultCode");

        System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
        System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));

        Map<String, Object> body = new HashMap<String, Object>();
        body = (Map<String, Object>) map.get("body");

        List<Home> items = new ArrayList<Home>();
        items = (List<Home>) body.get("items");

        System.out.println("items.size(): " + items.size());

//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}

        model.addAllAttributes(header);
        model.addAllAttributes(body);
        return "user/publicCorona1List";
    }




}
