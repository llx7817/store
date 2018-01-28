package com.store.services;

import org.springframework.jdbc.core.JdbcTemplate;

import com.store.entity.BaseFile;
import com.store.entity.Product;
import com.store.entity.ProductCategory;
import com.store.entity.ProductLabel;
import com.store.entity.ProductParameter;
import com.store.entity.ProductParameterData;

/**
 * 获取服务总接口
 * 
 * @author Administrator
 * 
 */
public interface MyService {

	/**
	 * 获取数据库操作的通用Service
	 * 
	 * @return
	 */
	public CommonService<BaseFile, String> getBaseFileService();

	public CommonService<ProductCategory, String> getProductCategoryService();

	public CommonService<ProductLabel, String> getProductLabelService();

	public CommonService<ProductParameter, String> getProductParameterService();

	public CommonService<ProductParameterData, String> getProductParameterDataService();

	public CommonService<Product, String> getProductService();

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
