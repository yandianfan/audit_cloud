package com.cwsj.util;

import java.io.File;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


import com.fh.util.Logger;

public class MesUtil
{
  public static final String RTN_CODE_SUCCESS = "1";
  public static final String RTN_MSG_SUCCESS = "处理成功";
  public static final String RTN_CODE_CONDIERROR = "-2";
  public static final String RTN_MSG_CONDIERROR = "接收参数不正确";
  public static final String RTN_CODE_ERROR = "-1";
  public static final String RTN_MSG_ERROR = "处理失败";
  private static Map<String, String> errorMap = null;
  private static Logger logger = Logger.getLogger(MesUtil.class);


 public static String getError(String key) throws DocumentException{
     String pathString=MesUtil.class.getClassLoader().getResource("/").toString();
     if (errorMap == null) {
    	 errorMap = new HashMap<String, String>();
     }
    // pathString=pathString.substring(6, pathString.indexOf("/WEB-INF/"));
     File f = new File( pathString.substring(6, pathString.indexOf("/classes/"))+"/classes/exception.xml");
     SAXReader reader = new SAXReader();
     Document doc = reader.read(f);
     Element root = doc.getRootElement();
     Element foo;
     logger.info("=======================共有" + root.nodeCount()
             + "个结点。");
     for (Iterator k = root.elementIterator("error"); k.hasNext();) {
         foo = (Element) k.next();
         if (foo.elementText("code") != null
                 && !"".equals(foo.elementText("code"))) {
             synchronized (errorMap) {
            	 errorMap.put(foo.elementText("name"), foo.elementText("dz"));
                 logger.info("name=" + foo.elementText("dz"));
                 logger.info(foo.elementText("dz"));
             }
         }
     }
    return errorMap.get(key);  
 }
  public static void main(String[] args) throws Exception
  {
//    String str = "<?xml version=\"1.0\" encoding=\"GBK\" ?><ROOT><BUSINESSRESPONSE><RETHEAD><WBYWZJ>0D90AFC7343BE7B301343BE802920003</WBYWZJ><SSSQ_XH>23220111214172033671000005825944</SSSQ_XH><RTN_CODE>1</RTN_CODE><RTN_MSG>澶勭悊鎴愬姛锛?</RTN_MSG></RETHEAD></BUSINESSRESPONSE></ROOT>";
//    Map localMap = parseXmlValueForListNoXpath(str);
//    System.out.println(localMap);
      String pathString=MesUtil.class.getClassLoader().getResource("/").toString();
      // pathString=pathString.substring(6, pathString.indexOf("/WEB-INF/"));
       File f = new File(pathString+"/jslt_address.xml");
//      SAXReader reader = new SAXReader();
//      Document doc = reader.read(f);
//      Element root = doc.getRootElement();
//      Element foo;
//      logger.info("=======================共有" + root.nodeCount()
//              + "个结点。");
//      for (Iterator k = root.elementIterator("address"); k.hasNext();) {
//          foo = (Element) k.next();
//          if (foo.elementText("name") != null
//                  && !"".equals(foo.elementText("name"))) {
//              synchronized (addressMap) {
//                  addressMap.put(foo.elementText("name"), foo.elementText("dz"));
//                  logger.info("SQLKEY=" + foo.elementText("key"));
//                  logger.info(foo.elementText("content"));
//              }
//          }
//      }
  }
}