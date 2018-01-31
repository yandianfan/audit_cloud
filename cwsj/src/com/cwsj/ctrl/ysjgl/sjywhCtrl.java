package com.cwsj.ctrl.ysjgl;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.util.PageData;
import com.cwsj.service.ysjgl.AuditService;
import com.cwsj.vo.ysjgl.BzsjxVO;
/** 
 * 类名称：sjywhCtrl
 * 创建人：ydf 
 * 创建时间：2014年7月1日
 * @version
 */
@Controller
@RequestMapping(value="/sjywhCtrl")
public class sjywhCtrl extends BaseController {

	@Resource(name="auditService")
	private AuditService auditService;
	
	/**
	 * 显示标准数据项列表
	 * @param model
	 * @return
	 */
	@RequestMapping
	public ModelAndView list(String LSH,String CWBBDL_DM)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd.put("LSH", LSH);
		pd.put("CWBBDL_DM", CWBBDL_DM);
		try{
			List<BzsjxVO> bzsjxList = auditService.listAllParentSjx(pd);
			mv.addObject("bzsjxList", bzsjxList);
			mv.setViewName("ysjgl/ysj_list");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
		return mv;
	}
	
	/**
	 * 请求编辑菜单页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit(String SJX_XH)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String LSH=pd.getString("LSH");
			pd.put("SJX_XH",SJX_XH);
			pd.put("LSH",LSH);
			//pd = auditService.getMenuById(pd);
			List<BzsjxVO> bzsjxList = auditService.listAllParentSjx(pd);
			mv.addObject("bzsjxList", bzsjxList);
			mv.addObject("pd", pd);
			mv.setViewName("pages/ysjgl/ysj_select");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}


	
	/**
	 * 获取当前菜单的所有子菜单
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/sub")
	public void getSub(@RequestParam String SJX_XH,@RequestParam String LSH,HttpServletResponse response)throws Exception{
		try {
			PageData pd = new PageData();
			pd.put("LSH",LSH);
			pd.put("SJSJX_XH",SJX_XH);			
			List<BzsjxVO> subSjx = auditService.listSubSjxByParentId(pd);
			JSONArray arr = JSONArray.fromObject(subSjx);
			PrintWriter out;
			
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			String json = arr.toString();
			out.write(json);
			out.flush();
			out.close();
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
	}
	/**
	 * 获取当前菜单的所有子菜单
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/jcSjx")
	@ResponseBody
	public Object jcSjx()throws Exception{
		Map map=new HashMap();		
		try {
			PageData pd =this.getPageData();
			auditService.jcSjx(pd);
			map.put("result", "解除成功");
		} catch (Exception e) {
			logger.error(e.toString(), e);
			map.put("result", e.toString());	
		}
		return map;
	}	
/**
 * 解除原始数据科目对照	
 * @return
 * @throws Exception
 */
	@RequestMapping(value="/jcYsSjx")
	@ResponseBody
	public Object jcYsSjx()throws Exception{
		Map map=new HashMap();		
		try {
			PageData pd =this.getPageData();
			auditService.jcSjx(pd);
			map.put("result", "解除成功");
		} catch (Exception e) {
			logger.error(e.toString(), e);
			map.put("result", e.toString());	
		}
		return map;
	}		
	/**
	 *保存原始科目和标准科目的对照关系，对原始科目进行匹配
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/savaBzsjxgx")
	@ResponseBody
	public Object savaBzsjxgx()throws Exception{
		Map map=new HashMap();		
		try {
			PageData pd =this.getPageData();
			pd.put("SJX_MC", URLDecoder.decode((String)pd.get("SJX_MC"), "utf-8"));
			pd.put("kmname", URLDecoder.decode((String)pd.get("kmname"), "utf-8"));
			auditService.glysSjx(pd);
			map.put("result", "关联成功");
		} catch (Exception e) {
			logger.error(e.toString(), e);
			map.put("result", e.toString());	
		}
		return map;
	}	
	
	/**
	 *自动匹配上次保存的匹配关系
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/autoppBzsjx")
	@ResponseBody
	public Object autoppBzsjx()throws Exception{
		Map map=new HashMap();		
		try {
			PageData pd =this.getPageData();
			auditService.autoppSjx(pd);
			map.put("result", "自动匹配成功");
		} catch (Exception e) {
			logger.error(e.toString(), e);
			map.put("result", e.toString());	
		}
		return map;
	}
}
