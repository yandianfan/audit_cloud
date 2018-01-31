package com.platform.webservice.server;

import javax.jws.WebParam;
import javax.jws.WebService;

@WebService  
public interface CwsjWebService {  
     
    /** 
     * 根据传递的条件获取相册信息 
     * xml的格式规范 
     * <?xml version=\"1.0\" encoding=\"UTF-8\"?> 
     * <facelook> 
     *  <condition> 
     *      <name></name> 
     *      <description></description> 
     *      <pageno></pageno> 
     *      <pagesize></pagesize> 
     *  </condition> 
     * </facelook> 
     * 这里的WebParam必须指定，否则调用的时候返回null 
     * @return 
     */  
    public String getAlcwData(@WebParam(name="xmlStr") String xmlStr);  
}  
 

