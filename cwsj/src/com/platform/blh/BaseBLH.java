package com.platform.blh;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.fh.util.Logger;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
/**
 * BLH基类(包含事物的封装，一个BLH一个事物，通过编码来控制事物，事物的提交和回滚统一在CTRL里面调用)
 * @author yan
 *
 */
public class BaseBLH {
	
	private static PersistenceDAO persistenceDAO = null;
    
	public synchronized  static PersistenceDAO getPersistenceDAO(){
		Logger logger = Logger.getLogger(BaseBLH.class);
//		logger.info("获取数据库连接");
//		persistenceDAO= PersistenceDAO.getInstance();
        return persistenceDAO;		
	}
	
	public synchronized  static PersistenceDAO closePersistenceDAO() throws Exception{
		Logger logger = Logger.getLogger(BaseBLH.class);
//		if(persistenceDAO!=null){
//			boolean sessionStatus=BaseDAO.getInstance().getStatus();
//			try {
//			  if(sessionStatus==true){
//					logger.info("BaseDAO.getInstance().commit()提交事物");
//					BaseDAO.getInstance().commit();
//					logger.info("BaseDAO.getInstance().close()关闭事物");
//					BaseDAO.getInstance().close();				  
//			  }else{
//				    logger.info("BaseDAO.getInstance().rollback()回滚事物");
//					BaseDAO.getInstance().rollback();
//					logger.info("BaseDAO.getInstance().close()关闭事物");
//					BaseDAO.getInstance().close();				  
//			  }
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				logger.info("BaseDAO.getInstance().rollback()回滚事物");
//				BaseDAO.getInstance().rollback();
//				logger.info("BaseDAO.getInstance().close()关闭事物");
//				BaseDAO.getInstance().close();
//				e.printStackTrace();
//			}			
//		}
        return persistenceDAO;		
	}
	
	public synchronized  static PersistenceDAO rollbackPersistenceDAO() throws Exception{
		Logger logger = Logger.getLogger(BaseBLH.class);
//		if(persistenceDAO!=null){
//			boolean sessionStatus=BaseDAO.getInstance().getStatus();
//			try {
//			  if(sessionStatus==true){
//				  logger.info("BaseDAO.getInstance().rollback()回滚事物");
//					BaseDAO.getInstance().rollback();
//					logger.info("BaseDAO.getInstance().close()关闭事物");
//					BaseDAO.getInstance().close();		
//					persistenceDAO=null;
//			  }else{
//				  logger.info("BaseDAO.getInstance().rollback()回滚事物");
//					BaseDAO.getInstance().rollback();
//					logger.info("BaseDAO.getInstance().close()关闭事物");
//					BaseDAO.getInstance().close();					  
//			  }
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				logger.info("BaseDAO.getInstance().rollback()回滚事物");
//				BaseDAO.getInstance().rollback();
//				logger.info("BaseDAO.getInstance().close()关闭事物");
//				BaseDAO.getInstance().close();
//				e.printStackTrace();
//			}			
//		}
        return persistenceDAO;		
	}	
}
