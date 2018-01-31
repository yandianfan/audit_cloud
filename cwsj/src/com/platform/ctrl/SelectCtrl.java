package com.platform.ctrl;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.util.PageData;
import com.platform.event.ZTreeVO;
import com.platform.service.SelectService;
import com.cwsj.vo.ysjgl.BzsjxVO;
/** 
 * 类名称：sjywhCtrl
 * 创建人：ydf 
 * 创建时间：2014年7月1日
 * @version
 */
@Controller
@RequestMapping(value="/SelectCtrl")
public class SelectCtrl extends BaseController {

	@Resource(name="SelectService")
	private SelectService SelectService;
	
	/**
	 * 下拉控件初始化
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/selectInit")
	public void selectInit(HttpServletResponse response)throws Exception{
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String selectKey=pd.getString("selectKey");
			String ljzbj=pd.getString("ljzbj");
			String ID=pd.getString("id");
			String TJ1=pd.getString("tj1");
			List<Map> selectList = SelectService.listSelect(pd);
			JSONArray arr = JSONArray.fromObject(selectList);
			String selectNode = arr.toString();
			PrintWriter out;			
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			out.write(selectNode);
			out.flush();
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
	}	
	
}
