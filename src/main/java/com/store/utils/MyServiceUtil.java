package com.store.utils;

import org.springframework.jdbc.core.JdbcTemplate;

import com.store.services.CommonService;
import com.store.services.MyService;

/**
 * 服务获取工具类，便于在普通类中用各类服务
 * 
 * @author hh
 *
 */
public final class MyServiceUtil {
	private static MyService service;

	public static void setService(MyService service) {
		MyServiceUtil.service = service;
	}

	public static CommonService getCommonService() {
		return service.getCommonService();
	}

	// public static UserService getUserService() {
	// return service.getUserService();
	// }

	// public static BaseDao getBaseDao() {
	// return service.getBaseDao();
	// }

	public static JdbcTemplate getJdbcTemplate() {
		return service.getJdbcTemplate();
	}

}
