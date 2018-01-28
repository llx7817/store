package com.store.servicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.store.entity.BaseFile;
import com.store.entity.Product;
import com.store.entity.ProductCategory;
import com.store.entity.ProductLabel;
import com.store.entity.ProductParameter;
import com.store.entity.ProductParameterData;
import com.store.services.CommonService;
import com.store.services.MyService;

@Service
public class MyServiceImpl implements MyService {
	@Autowired
	private CommonService<BaseFile, String> baseFileService;
	@Autowired
	private CommonService<Product, String> productService;
	@Autowired
	private CommonService<ProductLabel, String> productLabelService;
	@Autowired
	private CommonService<ProductParameter, String> productParameterService;
	@Autowired
	private CommonService<ProductParameterData, String> productParameterDataService;
	@Autowired
	private CommonService<ProductCategory, String> productCategoryService;
	// @Autowired
	// @Qualifier("msSqlBuilder")
	// private SqlBuilder msSqlBuilder;

	// @Autowired
	// private UserService userService;

	// @Autowired
	// private BaseDao baseDao;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public CommonService<ProductCategory, String> getProductCategoryService() {
		return productCategoryService;
	}

	public CommonService<ProductLabel, String> getProductLabelService() {
		return productLabelService;
	}

	public CommonService<ProductParameter, String> getProductParameterService() {
		return productParameterService;
	}

	public CommonService<ProductParameterData, String> getProductParameterDataService() {
		return productParameterDataService;
	}

	public CommonService<Product, String> getProductService() {
		return productService;
	}

	public CommonService<BaseFile, String> getBaseFileService() {
		return baseFileService;
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
