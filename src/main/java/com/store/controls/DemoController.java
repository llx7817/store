package com.store.controls;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.store.entity.Product;
import com.store.services.CommonService;

@Controller
public class DemoController {
	@Autowired
	// @Resource(name = "commonService")
	private CommonService<Product, Integer> commonService;
	// @Autowired
	// private BaseDao<Product> baseDao;

	@RequestMapping("/text")
	public String test(Model model) {
		Product productLabel = new Product();
		// productLabel.setId("122");
		// productLabel = commonService.get(Product.class, "10");
		productLabel.setName("qqqqq");
		// commonService.save(productLabel);
		// commonService.save(productLabel);
		model.addAttribute("department", productLabel);
		return "text";
	}

	@RequestMapping("/manager/login")
	public String login(Model model) {
		// model.addAttribute("department", productLabel);
		return "manager/test";
	}

}
