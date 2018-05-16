package com.store.controls;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.store.entity.User;
import com.store.services.CommonService;

@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	private CommonService<User, String> commonServiceUser;

	// 用户的订单
	@RequestMapping("userForm")
	public String userForm(Model model, User user) {
		return "main/user/userForm";
	}

	// 用户的购物车
	@RequestMapping("userCart")
	public String userCart(Model model, User user) {
		return "main/user/userCart";
	}

}
