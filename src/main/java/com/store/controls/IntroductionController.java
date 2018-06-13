package com.store.controls;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.store.entity.Product;
import com.store.entity.ProductParameter;
import com.store.entity.ProductParameterData;
import com.store.entity.User;
import com.store.services.CommonService;

@Controller
@RequestMapping("/introduction/")
public class IntroductionController {
	@Autowired
	private CommonService<Product, String> commonService;
	@Autowired
	private CommonService<ProductParameterData, String> commonServiceProductParameterData;
	@Autowired
	private CommonService<ProductParameter, String> commonServiceProductParameter;
	@Autowired
	private CommonService<User, String> commonServiceUser;

	// 产品详情页
	@RequestMapping("item")
	public String item(Model model, String id, String userId) {
		Product item = new Product();
		item = (Product) commonService.get(Product.class, id);
		List<ProductParameter> productParameterList = commonServiceProductParameter.getAll(ProductParameter.class);
		List<ProductParameterData> productParameterDataList = commonServiceProductParameterData
				.getByAttribute(ProductParameterData.class, "productId", id);
		List<Map<String, String>> productParameterMapList = new ArrayList<Map<String, String>>();
		for (ProductParameter productParameter : productParameterList) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", productParameter.getId());
			map.put("name", productParameter.getName());
			map.put("value", "");
			for (ProductParameterData productParameterData : productParameterDataList) {
				if (productParameterData.getProductParameterId().equals(productParameter.getId())) {
					// map.put("productParameterDataId", productParameterData.getId());
					map.put("value", productParameterData.getValue());
					break;
				}
			}
			productParameterMapList.add(map);
		}
		User user = new User();
		if (userId != null && !userId.isEmpty() && !userId.equals("0")) {
			user = commonServiceUser.get(User.class, userId);
		}
		// DataUtil
		model.addAttribute("item", item);
		model.addAttribute("user", user);
		model.addAttribute("productParameterList", productParameterMapList);
		// model.addAttribute("introductionImgIds", introductionImgIds);
		return "main/introduction/list";
	}

}
