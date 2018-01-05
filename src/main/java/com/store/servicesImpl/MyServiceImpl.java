package com.store.servicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.store.services.CommonService;
import com.store.services.MyService;

@Service
public class MyServiceImpl<T, PK> implements MyService<T, PK> {
	@Autowired
	private CommonService commonService;

	// @Autowired
	// @Qualifier("msSqlBuilder")
	// private SqlBuilder msSqlBuilder;

	// @Autowired
	// private UserService userService;

	// @Autowired
	// private BaseDao baseDao;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public CommonService getCommonService() {
		return commonService;
	}

	//
	// @Override
	// public UserService getUserService() {
	// return userService;
	// }

	// @Override
	// public BaseDao getBaseDao() {
	// return baseDao;
	// }

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

}
