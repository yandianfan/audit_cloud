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
import com.platform.service.TreeService;
import com.cwsj.vo.ysjgl.BzsjxVO;
/** 
 * 类名称：sjywhCtrl
 * 创建人：ydf 
 * 创建时间：2014年7月1日
 * @version
 */
@Controller
@RequestMapping(value="/TreeCtrl")
public class TreeCtrl extends BaseController {

	@Resource(name="TreeService")
	private TreeService TreeService;
	
	/**
	 * 弹出树控件初始化
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/treeInit")
	public ModelAndView treeInit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String treeKey=pd.getString("treeKey");
			String ljzbj=pd.getString("ljzbj");
			String ID=pd.getString("id");
			String TJ1=pd.getString("tj1");
			String multiSelect= pd.getString("multiSelect");
			//pd = sjywhService.getMenuById(pd);
			List<ZTreeVO> treeList = TreeService.listTree(pd);
//			JSONObject jsonObject = (JSONObject) JSONSerializer.toJSON(treeList);
			JSONArray arr = JSONArray.fromObject(treeList);
			String treeNode = arr.toString();
			if("1".equals(multiSelect)){
				pd.put("checkStyle", "enable:true");
			}else{
				pd.put("checkStyle", "enable:true,chkStyle:radio");
			}
			mv.addObject("treeNode", treeNode);
			mv.addObject("pd", pd);
			mv.setViewName("comm/ztree");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
/**
 * 用于加载下拉树
 * @param response
 * @return
 * @throws Exception
 */
	@RequestMapping(value="/treeSelect")
	public ModelAndView treeSelect(HttpServletResponse response)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String treeKey=pd.getString("treeKey");
			String ljzbj=pd.getString("ljzbj");
			String ID=pd.getString("id");
			String TJ1=pd.getString("tj1");
			//pd = sjywhService.getMenuById(pd);
			List<ZTreeVO> treeList = TreeService.listTree(pd);
//			JSONObject jsonObject = (JSONObject) JSONSerializer.toJSON(treeList);
			JSONArray arr = JSONArray.fromObject(treeList);
			String treeNode = arr.toString();
			PrintWriter out;			
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			out.write(treeNode);
			out.flush();
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}	
	
}
