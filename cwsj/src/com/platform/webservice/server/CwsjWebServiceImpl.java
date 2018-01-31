package com.platform.webservice.server;

import java.util.List;

import javax.jws.WebService;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;

@WebService  
//这后面的可以不写注释后面的配置，在applicationContext配置也一样(serviceName="facelookWebService",endpointInterface="com.facelook.webservice.server.FacelookWebService")  
public class CwsjWebServiceImpl implements CwsjWebService{  
  
//    @Autowired  
//    private AlbumService albumService;  
      
    @Override  
    public String getAlcwData(String xmlStr) {  
        String returnStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"  
                + "     <facelook>"  
                + "        <condition>"  
                + "            <name>家</name>"  
                + "            <description></description>"  
                + "            <pageno></pageno>"  
                + "            <pagesize></pagesize>"  
                + "        </condition>"  
                + "     </facelook>";  
    	System.out.print(xmlStr);
//        try {  
//            List<Album> albumList = getAlbumPage(xmlStr);  
//            JSONArray jsonArray = JSONArray.fromObject(albumList);  
//            return jsonArray.toString();  
//        } catch (Exception e) {  
//            e.printStackTrace();  
//        }  
        return returnStr;  
    }  
}   
