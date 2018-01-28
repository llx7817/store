package com.store.controls;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.entity.User;
import com.store.services.CommonService;

@Controller
@RequestMapping("/login/")
public class UserController {
	@Autowired
	private CommonService<User, String> commonServiceUser;

	// 页面跳转
	@RequestMapping("lunBo")
	public String lunBo(Model model, User item) {
		String pictureIds = "";
		List<User> baseFileList = commonServiceUser.getByAttribute(User.class, "path", "lunBo");// 获取标记为lunBo的图片
		for (User baseFile : baseFileList) {
			pictureIds += "," + baseFile.getId();
		}
		model.addAttribute("pictureIds", pictureIds);
		return "manager/picture/lunBo";
	}

	@RequestMapping("load/delete")
	@ResponseBody
	public Map<String, String> delete(String id) {
		String flag = "false";
		if (!id.equals("")) {
			commonServiceUser.deleteById(User.class, id);
			flag = "true";
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", flag);
		return map;
	}
}
