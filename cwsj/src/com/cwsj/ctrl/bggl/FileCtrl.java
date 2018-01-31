package com.cwsj.ctrl.bggl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.cwsj.service.bggl.NstzbgService;
import com.cwsj.service.dggl.TydgdyService;
import com.cwsj.util.Const;
import com.cwsj.util.WordUtil;
import com.cwsj.vo.login.User;
import com.fh.controller.base.BaseController;
import com.fh.util.FileUpload;
import com.fh.util.PageData;
import com.fh.util.Tools;

@Controller
@RequestMapping(value="/fileCtrl")
public class FileCtrl  extends BaseController {
	@Resource(name="nstzbgService")
	private NstzbgService NstzbgService;

	public Class<?> BLHOBJ;

	public Method targetBizMethod;
	public Method persistenceMethod;
	public static final String MAP_BLH="MAP_BLH";

	/**
	 * 
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/word")
    public void exportWord(HttpServletResponse response) throws Exception {
       try {
            response.reset();
            PageData pd = this.getPageData();
            String fileName = "nstzbg.docx";
            fileName = new String((fileName).getBytes("gb2312"), "ISO8859-1");
            response.setContentType("application/octet-stream; charset=UTF-8");
            response.setHeader("Content-disposition", "attachment; filename=" + fileName);
            OutputStream os = response.getOutputStream();
            String path = this.getRequest().getSession().getServletContext().getRealPath("/")
                    + Tools.readTxtFile(Const.NSTZBG_PATH)+fileName;
            this.logger.error(path);;
            XWPFDocument doc = null;
            Map map = NstzbgService.scBgnr(pd);
            doc = WordUtil.generateWord(map, path);
            doc.write(os);
            os.close();

        } catch (Exception e) {
        	this.logger.error(e);;
            System.out.println(e.toString());
        }
    }

	/**
	 * 上传ECPA文件
	 */
	@ResponseBody
	@RequestMapping(value="/uploadEcpa", method=RequestMethod.POST)
	public Object uploadEcpa(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="file",required=false) MultipartFile file, 
			@RequestParam(value="SSSQ") String SSSQ, 
			@RequestParam(value="USERID") String USERID
			) throws Exception{
//		ModelAndView mv = this.getModelAndView();
		JSONObject jo = new JSONObject();
		PageData pd =  this.getPageData();
		if (null != file && !file.isEmpty()) {
			String filePath = Tools.readTxtFile(Const.ECPAFILE_PATH)+"/"+USERID+"/";							//文件上传路径
			String fileName =  FileUpload.fileUp(file, filePath, file.getOriginalFilename());							//执行上传	
			
			/*存入数据库操作======================================*/
			jo.put("filePath", filePath);
			jo.put("fileName", fileName);
			jo.put("success", 1);			
//			mv.addObject("msg","success");
		}
		response.setHeader("Access-Control-Allow-Origin","*");
		return jo;
//		mv.setViewName("ysjgl/uploadFile");
//		return mv;
	}	
	/**
	 * 下载ECPA文件
	 */	
	@RequestMapping(value="/downloadEcpa")
	public void downloadEcpa(HttpServletResponse  response, 
			@RequestParam(value="filePath") String FILE_PATH
			) throws Exception{
		   try {
			    FILE_PATH=new String(FILE_PATH.getBytes("iso8859-1"),"UTF-8");
	            // path是指欲下载的文件的路径。
	            File file = new File(FILE_PATH);
	            // 取得文件名。
	            String filename = file.getName();
	            // 取得文件的后缀名。
	            String ext = filename.substring(filename.lastIndexOf(".") + 1).toUpperCase();

	            // 以流的形式下载文件。
	            InputStream fis = new BufferedInputStream(new FileInputStream(FILE_PATH));
	            byte[] buffer = new byte[fis.available()];
	            fis.read(buffer);
	            fis.close();
	            // 清空response
	            response.reset();
	            // 设置response的Header
	            response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
	            response.addHeader("Content-Length", "" + file.length());
	            OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
	            response.setContentType("application/octet-stream");
	            toClient.write(buffer);
	            toClient.flush();
	            toClient.close();
	        } catch (IOException ex) {
	            ex.printStackTrace();
	        }
	}
	
	/**
	 * 上传ECPA文件
	 */
	@ResponseBody
	@RequestMapping(value="/uploadTsdgMb", method=RequestMethod.POST)
	public Object uploadTsdgMb(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="file",required=false) MultipartFile file, 
			@RequestParam(value="dgdm") String dgdm
			) throws Exception{
		JSONObject jo = new JSONObject();
		PageData pd =  this.getPageData();
		if (null != file && !file.isEmpty()) {
			String filePath = Tools.readTxtFile(Const.TYDGMB_PATH)+"/"+dgdm+"/";							//文件上传路径
			String fileName =  FileUpload.fileUp(file, filePath, file.getOriginalFilename());							//执行上传
			//tydgdyService.saveTsdgMb(dgdm,filePath,fileName);		
			
			/*存入数据库操作======================================*/
			jo.put("filePath", filePath);
			jo.put("fileName", fileName);
			jo.put("success", 1);
		}
		response.setHeader("Access-Control-Allow-Origin","*");
		return jo;
	}
	/**
	 * 上传ECPA文件
	 */
	@ResponseBody
	@RequestMapping(value="/uploadMyTsdgMb", method=RequestMethod.POST)
	public Object  uploadMyTsdgMb(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="file",required=false) MultipartFile file, @RequestParam(value="LSH") String LSH,
			@RequestParam(value="dgdm") String dgdm
			) throws Exception{
		JSONObject jo = new JSONObject();
		PageData pd =  this.getPageData();
		if (null != file && !file.isEmpty()) {
			String filePath = Tools.readTxtFile(Const.TYDG_PATH)+"/"+dgdm+"/";							//文件上传路径
			String fileName =  FileUpload.fileUp(file, filePath, file.getOriginalFilename());							//执行上传
			//tydgdyService.saveMyTsdgMb(LSH,dgdm,filePath,fileName);		
			
			/*存入数据库操作======================================*/
			jo.put("filePath", filePath);
			jo.put("fileName", fileName);
			jo.put("success", 1);
		}
		response.setHeader("Access-Control-Allow-Origin","*");
		return jo;
	}	
	/**
	 * 下载模板文件
	 */	
	@RequestMapping(value="/downloadTsdgMb")
	public void downloadTsdgMb(HttpServletResponse  response, 
			@RequestParam(value="filePath") String FILE_PATH
			) throws Exception{
		   try {
			    FILE_PATH=new String(FILE_PATH.getBytes("iso8859-1"),"UTF-8");
	            // path是指欲下载的文件的路径。
	            File file = new File(FILE_PATH);
	            // 取得文件名。
	            String filename = file.getName();
	            // 取得文件的后缀名。
	            String ext = filename.substring(filename.lastIndexOf(".") + 1).toUpperCase();

	            // 以流的形式下载文件。
	            InputStream fis = new BufferedInputStream(new FileInputStream(FILE_PATH));
	            byte[] buffer = new byte[fis.available()];
	            fis.read(buffer);
	            fis.close();
	            // 清空response
	            response.reset();
	            // 设置response的Header
	            response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
	            response.addHeader("Content-Length", "" + file.length());
	            OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
	            response.setContentType("application/octet-stream");
	            toClient.write(buffer);
	            toClient.flush();
	            toClient.close();
	        } catch (IOException ex) {
	            ex.printStackTrace();
	        }
	}
	
	/**
	 * 下载模板文件
	 */	
	@RequestMapping(value="/downloadMyTsdgMb")
	public void downloadMyTsdgMb(HttpServletResponse  response, 
			@RequestParam(value="filePath") String FILE_PATH
			) throws Exception{
		   try {
			    FILE_PATH=new String(FILE_PATH.getBytes("iso8859-1"),"UTF-8");
	            // path是指欲下载的文件的路径。
	            File file = new File(FILE_PATH);
	            // 取得文件名。
	            String filename = file.getName();
	            // 取得文件的后缀名。
	            String ext = filename.substring(filename.lastIndexOf(".") + 1).toUpperCase();

	            // 以流的形式下载文件。
	            InputStream fis = new BufferedInputStream(new FileInputStream(FILE_PATH));
	            byte[] buffer = new byte[fis.available()];
	            fis.read(buffer);
	            fis.close();
	            // 清空response
	            response.reset();
	            // 设置response的Header
	            response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
	            response.addHeader("Content-Length", "" + file.length());
	            OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
	            response.setContentType("application/octet-stream");
	            toClient.write(buffer);
	            toClient.flush();
	            toClient.close();
	        } catch (IOException ex) {
	            ex.printStackTrace();
	        }
	}
}
