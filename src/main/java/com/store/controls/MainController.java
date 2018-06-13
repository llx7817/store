package com.store.controls;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.store.entity.BaseFile;
import com.store.entity.Product;
import com.store.entity.User;
import com.store.services.CommonService;

@Controller
@RequestMapping("/main/")
public class MainController {
	@Autowired
	private CommonService<BaseFile, String> commonServiceBaseFile;
	@Autowired
	private CommonService<User, String> commonServiceUser;
	@Autowired
	private CommonService commonService;

	// 主页面
	@RequestMapping("list")
	public String list(Model model, String userId) {
		List<BaseFile> baseFileList = commonServiceBaseFile.getByAttribute(BaseFile.class, "path", "lunBo");// 获取标记为lunBo的图片
		BaseFile baseFile_First = baseFileList.get(0);
		List<Product> productList = commonService.getAll(Product.class);
		List<Product> productList2 = new ArrayList<Product>();
		int size = 6;
		if (productList.size() < size) {
			size = productList.size();
		}
		for (int i = 0; i < size; i++) {
			productList2.add(productList.get(i));
		}
		baseFileList.remove(0);
		User user = new User();
		user.setId("0");
		if (userId != null && !userId.isEmpty()) {
			user = commonServiceUser.get(User.class, userId);
		}
		model.addAttribute("user", user);
		model.addAttribute("baseFileList", baseFileList);
		model.addAttribute("baseFile_First", baseFile_First);
		model.addAttribute("productList", productList2);
		return "main/list";
	}

}
