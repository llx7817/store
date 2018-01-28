package com.store.utils;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.store.entity.BaseFile;
import com.store.entity.Product;
import com.store.entity.ProductCategory;
import com.store.entity.ProductLabel;
import com.store.entity.ProductParameter;
import com.store.entity.ProductParameterData;
import com.store.services.CommonService;
import com.store.services.MyService;

/**
 * 服务获取工具类，便于在普通类中用各类服务
 * 
 * @author hh
 *
 */
@Lazy(false)
@Component
public class MyServiceUtil {
	@Autowired
	private MyService service;
	private static MyServiceUtil myServiceUtil;

	/** */
	@PostConstruct
	public void init() {
		myServiceUtil = this;
		myServiceUtil.service = this.service;
	}

	// public static void setService(MyService service) {
	// myServiceUtil.service = service;
	// }

	// public MyService myServiceUtil.service {
	// return myServiceUtil.service;
	// }

	public static CommonService<BaseFile, String> getBaseFileService() {
		return myServiceUtil.service.getBaseFileService();
	}

	public static CommonService<Product, String> getProductService() {
		return myServiceUtil.service.getProductService();
	}

	public static CommonService<ProductLabel, String> getProductLabelService() {
		return myServiceUtil.service.getProductLabelService();
	}

	public static CommonService<ProductParameter, String> getProductParameterService() {
		return myServiceUtil.service.getProductParameterService();
	}

	public static CommonService<ProductParameterData, String> getProductParameterDataService() {
		return myServiceUtil.service.getProductParameterDataService();
	}

	public static CommonService<ProductCategory, String> getProductCategoryService() {
		return myServiceUtil.service.getProductCategoryService();
	}

	public static JdbcTemplate getJdbcTemplate() {
		return myServiceUtil.service.getJdbcTemplate();
	}

}
