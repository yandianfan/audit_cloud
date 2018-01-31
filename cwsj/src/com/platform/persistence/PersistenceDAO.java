package com.platform.persistence;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionTemplate;

import com.fh.dao.DaoSupport;
/**
 * 数据源处理封装类，调用mybatis
 * @author yan
 *
 */
public class PersistenceDAO {
    //注意，这里没有final    
    private static PersistenceDAO persistenceDAO=null;
	
    private static SqlSessionFactory sqlSessionFactory;
    private static SqlSession session ;
  //私有的默认构造子
    public PersistenceDAO(SqlSessionFactory sqlSessionFactory){
        this.sqlSessionFactory = sqlSessionFactory;
    }
    
    //静态工厂方法 
    public synchronized  static PersistenceDAO getInstance() {
//         if (persistenceDAO == null) {  
//        	 persistenceDAO = new PersistenceDAO(getSqlSessionFactory());
//         }  
         persistenceDAO = new PersistenceDAO(getSqlSessionFactory());
        session= sqlSessionFactory.openSession();
        return persistenceDAO;
    }
    
    /**
     * 获取SqlSessionFactory
     * @return
     */
    private static SqlSessionFactory getSqlSessionFactory(){
        SqlSessionFactory sqlSessionFactory = null;
        SqlSession session = null;
        String resource = "mybatis/mybatis-config.xml";
        InputStream inputStream;
        try {
            inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sqlSessionFactory;
    }	
	public boolean getStatus() throws Exception {
		if(session!=null){
			try{
				Connection conn=session.getConnection();
			}catch(Exception e){
				return false;
			}			
			return true;
		}else{
			return false;
		}
	}
	
	public void commit() throws Exception {
		session.commit();
	}	
	
	public void rollback() throws Exception {
		session.rollback();
	}
	
	public void close() throws Exception {
		session.close();
	}		
	/**
	 * 保存对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object save(String str, Object obj) throws Exception {
		return session.insert(str, obj);
	}
	
	/**
	 * 批量更新
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object batchSave(String str, List objs)throws Exception{
	  if(objs.size()>0){
		  return session.insert(str, objs);  
	  }	
	  return 0;
	}
	
	
	/**
	 * 批量保存
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public void batchSaveAll(String str, List objs)throws Exception{
		//批量执行器
		SqlSession sqlSession = sqlSessionFactory.openSession(ExecutorType.BATCH,false);
		try{
			if(objs!=null){
				for(int i=0,size=objs.size();i<size;i++){
					sqlSession.insert(str, objs.get(i));
				}
				sqlSession.flushStatements();
				sqlSession.commit();
				sqlSession.clearCache();
			}
		}finally{
			sqlSession.close();
		}
	}	
	/**
	 * 修改对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object update(String str, Object obj) throws Exception {
		return session.update(str, obj);
	}

	/**
	 * 批量更新
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public void batchUpdate(String str, List objs)throws Exception{
		//批量执行器
		SqlSession sqlSession = sqlSessionFactory.openSession(ExecutorType.BATCH,false);
		try{
			if(objs!=null){
				for(int i=0,size=objs.size();i<size;i++){
					sqlSession.update(str, objs.get(i));
				}
				sqlSession.flushStatements();
				sqlSession.commit();
				sqlSession.clearCache();
			}
		}finally{
			sqlSession.close();
		}
	}
	
	/**
	 * 批量更新
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object batchDelete(String str, List objs)throws Exception{
		if(objs.size()>0){
			return session.delete(str, objs);
		}else{
			return false;
		}		
	}
	
	/**
	 * 删除对象 
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object delete(String str, Object obj) throws Exception {
		return session.delete(str, obj);
	}
	 
	/**
	 * 查找对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object findForObject(String str, Object obj) throws Exception {
		//return session.selectOne(str, obj);
		Object objmapper=session.selectOne(str, obj);
        if(objmapper==null){
        	objmapper=new HashMap();
        }
        return objmapper;
	}

	/**
	 * 查找对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object findForList(String str, Object obj) throws Exception {
		return session.selectList(str, obj);
	}
	
	public Object findForMap(String str, Object obj, String key, String value) throws Exception {
		return session.selectMap(str, obj, key);
	}
	
	public Object callProcedere(String str, Object obj) throws Exception {
		return session.selectOne(str, obj); 
	}	
}
