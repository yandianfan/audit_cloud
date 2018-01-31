package com.cwsj.service.login;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.MD5;
import com.fh.util.PageData;
@Service("registerService")
public class RegisterService  {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public PageData saveRegister(PageData pd) throws Exception{
		String passwd =MD5.md5(pd.getString("PASSWORD"));
		pd.put("PASSWORD", passwd);
		Map jcsxform =(Map) dao.findForObject("CommMapper.validateYhm", pd);
		if(!"".equals(jcsxform)&&jcsxform!=null){
			pd.put("MSG", "该用户名已注册");
			pd.put("SUCBJ", "0");
			return pd;
		}
		jcsxform =(Map) dao.findForObject("CommMapper.validateYhm2", pd);
		   // dao.save("YsjglMapper.insertsSjsqd", pd);
		if(!"".equals(jcsxform)&&jcsxform!=null){
			pd.put("MSG", "该用户名已存在");
			pd.put("SUCBJ", "0");
			return pd;
		}	
		jcsxform =(Map) dao.findForObject("CommMapper.validateZzjgdm", pd);
		   // dao.save("YsjglMapper.insertsSjsqd", pd);
		if(!"".equals(jcsxform)&&jcsxform!=null){
			pd.put("MSG", "该社会统一信用代码已注册");
			pd.put("SUCBJ", "0");
			return pd;
		}	
		jcsxform =(Map) dao.findForObject("CommMapper.validateQymc", pd);
		   // dao.save("YsjglMapper.insertsSjsqd", pd);
		if(!"".equals(jcsxform)&&jcsxform!=null){
			pd.put("MSG", "该企业名称已存在");
			pd.put("SUCBJ", "0");
			return pd;
		}	
		dao.save("CommMapper.insertQyjbxx", pd);
		dao.save("CommMapper.insertQyyhxx", pd);
		dao.save("CommMapper.insertQyjsyh", pd);
		jcsxform =(Map) dao.findForObject("CommMapper.validateQymc", pd);
		pd.put("MSG", "保存成功，生成企业代码"+jcsxform.get("DJXH")+",请记住企业代码和密码");
		pd.put("SUCBJ", "1");
		pd.put("DJXH", jcsxform.get("DJXH"));
		return pd;
	}
	
	public PageData modifyPassword(PageData pd) throws Exception{
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String userId=user.getUSER_ID();
		String passwd =MD5.md5(pd.getString("PASSWORD"));
		pd.put("PASSWORD", passwd);
		pd.put("userId", userId);
		dao.save("CommMapper.updatePassword", pd);
		pd.put("MSG", "密码修改成功");
		pd.put("SUCBJ", "1");
		return pd;
	}
}
