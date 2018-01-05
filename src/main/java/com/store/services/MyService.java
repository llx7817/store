package com.store.services;

import org.springframework.jdbc.core.JdbcTemplate;

/**
 * 获取服务总接口
 * 
 * @author Administrator
 * 
 */
public interface MyService<T, PK> {

	/**
	 * 获取数据库操作的通用Service
	 * 
	 * @return
	 */
	public CommonService getCommonService();

	/**
	 * 用户相关
	 * 
	 * @return
	 */
	// public UserService getUserService();

	/**
	 * DAO
	 * 
	 * @return
	 */
	// public BaseDao getBaseDao();

	public JdbcTemplate getJdbcTemplate();
}
