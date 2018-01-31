package com.cwsj.util;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class XtbmUtil {
	public static String getXtbm(String mkfl, String zzjgdm)
			throws DocumentException {
		String xtbm = "";
		String qz = (zzjgdm + "000000").substring(0, 6);
		String hz = DateUtil.getNowString("HHmmssSSS");
		xtbm = qz + mkfl + hz;
		return xtbm;
	}
	
	public static String getPzxh(String djxh,String zsxm,String sssq)
			throws DocumentException {
		String xtbm = "";
		if(zsxm=="10104"||"10104".equals(zsxm)){
			//xtbm = zsxm+djxh + sssq;
			xtbm = zsxm+djxh + DateUtil.getNowString("yyMMddHHmmssSSS");
		}		
		return xtbm;
	}	
	
	public static String getXtnumberbm()
			throws DocumentException {
		String xtbm = getRandomCodeStr(17)+DateUtil.getNowString("yyMMddHHmmssSSS");
		return xtbm;
	}
	

	public static String getsjSqlsh(String djxh,String sssq)
			throws DocumentException {
		//String xtbm = djxh+sssq+DateUtil.getNowString("yyMMddHHmmssSSS");
		String xtbm = djxh+sssq+DateUtil.getNowString("yyMMdd");
		return xtbm;
	}	

	/**
	 * 
	 * 获取一个指定位数的随机码
	 * 
	 * @return
	 */

	public static String getRandomCodeStr(Integer strLength) {

        
        Random rm = new Random();
        
        // 获得随机数
        double pross = (1 + rm.nextDouble()) * Math.pow(10, strLength);

        // 将获得的获得随机数转化为字符串
        String fixLenthString = String.valueOf(pross);

        // 返回固定的长度的随机数
        return fixLenthString.substring(1, strLength + 1).replace(".", "1");

	}


}
