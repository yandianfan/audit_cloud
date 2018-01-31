package com.platform.persistence;

import java.io.IOException;
import java.io.InputStream;
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
public class BaseDAO {
    //注意，这里没有final    
    private static BaseDAO baseDao=null;
	
    private SqlSessionFactory sqlSessionFactory;
  //私有的默认构造子
    public BaseDAO(SqlSessionFactory sqlSessionFactory){
        this.sqlSessionFactory = sqlSessionFactory;
    }
    
    //静态工厂方法 
    public synchronized  static BaseDAO getInstance() {
         if (baseDao == null) {  
        	 baseDao = new BaseDAO(getSqlSessionFactory());
         }  
        return baseDao;
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
	
	/**
	 * 保存对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object save(String str, Object obj) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		return session.insert(str, obj);
	}
	
	/**
	 * 批量更新
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object batchSave(String str, List objs )throws Exception{
		SqlSession session = sqlSessionFactory.openSession();
		return session.insert(str, objs);
	}
	
	/**
	 * 修改对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object update(String str, Object obj) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		return session.update(str, obj);
//		try {
//			  session.update(str, obj);
//			  session.commit(); 
//		} finally {
//			  session.close(); // 关闭会话，释放资源
//		}
//		return null;
	}

	/**
	 * 批量更新
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public void batchUpdate(String str, List objs )throws Exception{
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
	public Object batchDelete(String str, List objs )throws Exception{
		SqlSession session = sqlSessionFactory.openSession();
		return session.delete(str, objs);
	}
	
	/**
	 * 删除对象 
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object delete(String str, Object obj) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
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
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne(str, obj);
	}

	/**
	 * 查找对象
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object findForList(String str, Object obj) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectList(str, obj);
	}
	
	public Object findForMap(String str, Object obj, String key, String value) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectMap(str, obj, key);
	}
	
	public Object callProcedere(String str, Object obj) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne(str, obj); 
	}
}
