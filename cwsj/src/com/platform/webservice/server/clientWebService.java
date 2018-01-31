package com.platform.webservice.server;

import java.net.MalformedURLException;
import java.rmi.RemoteException;

import javax.xml.namespace.QName;
import javax.xml.rpc.ParameterMode;
import javax.xml.rpc.ServiceException;
import javax.xml.rpc.encoding.XMLType;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;


public class clientWebService {
	public static void main(String[] args) throws ServiceException, RemoteException, MalformedURLException {  
		    String xmlStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"  
		             + "     <facelook>"  
		             + "        <condition>"  
		             + "            <name>家</name>"  
		             + "            <description></description>"  
		             + "            <pageno></pageno>"  
		             + "            <pagesize></pagesize>"  
		             + "        </condition>"  
		             + "     </facelook>";  
		      
		      Service service = new Service();  
		      Call call = (Call) service.createCall();  
		      call.setTargetEndpointAddress("http://localhost:8080/cwsj/services/cwsjWebService?wsdl");  
		      QName qName = new QName("http://server.webservice.platform.com/", "getAlcwData");  
		      call.setOperationName(qName);  
		      call.setUseSOAPAction(true);  
		      //这下面两行一定要加上，否则接收在服务器端收不到。  
		      call.addParameter("xmlStr", XMLType.XSD_STRING, ParameterMode.IN);  
		      call.setReturnType(XMLType.XSD_STRING);  
		      String result = (String) call.invoke(new Object[] { xmlStr });  
		      System.out.println(result);  
		      
		    //将返回的字符串转换成list集合  
		    //JSONArray array = JSONArray.fromObject(result);  
		    //List<Album> list = JSONArray.toList(array,Album.class);  
		      
		}  

//	public static void main(String[] args) throws Exception {  
//		        //这个是用cxf 客户端访问cxf部署的webservice服务  
//		        //千万记住，访问cxf的webservice必须加上namespace ,否则通不过  
//		        //现在又另外一个问题，传递过去的参数服务端接收不到  
//		        JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();  
//		        org.apache.cxf.endpoint.Client client = dcf.createClient("http://localhost:8080/cwsj/services/cwsjWebService?wsdl");  
//		        //url为调用webService的wsdl地址  
//		        QName name=new QName("http://server.webservice.platform.com/","getAlcwData");  
//		        //namespace是命名空间，methodName是方法名  
//		        String xmlStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"  
//		                 + "     <facelook>"  
//		                 + "        <condition>"  
//		                 + "            <name>家</name>"  
//		                 + "            <description></description>"  
//		                 + "            <pageno></pageno>"  
//		                 + "            <pagesize></pagesize>"  
//		                 + "        </condition>"  
//		                 + "     </facelook>";  
//		        //paramvalue为参数值  
//		        Object[] objects=client.invoke(name,xmlStr);   
//		        //调用web Service//输出调用结果  
//		        System.out.println(objects[0].toString());  
//		}  

	
}
