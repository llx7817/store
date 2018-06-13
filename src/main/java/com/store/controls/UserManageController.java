package com.store.controls;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.entity.PageData;
import com.store.entity.Product;
import com.store.entity.User;
import com.store.entity.UserBuyData;
import com.store.services.CommonService;
import com.store.utils.DataUtil;

@Controller
@RequestMapping("/manager/user/")
public class UserManageController {
	@Autowired
	private CommonService<User, String> commonServiceUser;
	@Autowired
	private CommonService<UserBuyData, String> commonServiceUserBuyData;
	@Autowired
	private CommonService<Product, String> commonServiceProduct;

	// 用户登录
	@RequestMapping(value = "login", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, String> userLogin(
			@RequestParam(value = "accountNumber", required = false, defaultValue = "") String accountNumber,
			@RequestParam(value = "password", required = false, defaultValue = "") String password) {
		// String str = "";
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", "wrong");
		map.put("userId", "0");
		List<User> userList = commonServiceUser.getByAttribute(User.class, "name", accountNumber);
		User user = new User();
		if (!userList.isEmpty()) {
			user = userList.get(0);
			if (!password.equals("") && user.getPassword().equals(password)) {
				// str = accountNumber;
				map.put("flag", "success");
				// 如果这个账号标记为管理员的话，返回administrator的标记，将转到管理子系统
				String label = user.getLabel();
				if (label.equals("administrator"))
					map.put("flag", "administrator");
				// if (accountNumber.equals("administrator"))
				// map.put("flag", "administrator");
				map.put("value", accountNumber);
				map.put("userId", user.getId());
			} else {
				// str = "密码错误!";
				// map.put("flag", "wrong");
				map.put("value", "账号或密码错误!");
			}
		} else {
			// str = "账号不存在!";
			// map.put("flag", "wrong");
			map.put("value", "账号不存在!");
		}
		return map;
	}

	@RequestMapping("list")
	public String list(Model model, User user) {
		return "manager/user/list";
	}

	@RequestMapping("edit")
	public String edit(Model model, User item,
			@RequestParam(value = "id", required = false, defaultValue = "") String id) {
		if (!id.equals("")) {
			item = commonServiceUser.get(User.class, id);
		}
		model.addAttribute("item", item);
		return "manager/user/edit";
	}

	@RequestMapping(value = "load/search", method = RequestMethod.GET)
	@ResponseBody
	public PageData<Map<String, Object>> getItems(
			@RequestParam(value = "begin", required = false, defaultValue = "-1") int begin,
			@RequestParam(value = "pageSize", required = false, defaultValue = "-1") int pageSize,
			@RequestParam(value = "conditionDefinition", required = false, defaultValue = "") String conditionDefinition)
			throws UnsupportedEncodingException {
		conditionDefinition = DataUtil.encodURI(conditionDefinition);
		int end = -1;
		if (begin >= 0) {
			end = begin + pageSize;
		}
		List<User> itemList = commonServiceUser.getAll(User.class);
		PageData<User> itemPageData = DataUtil.toPageData(itemList, begin, end);
		List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
		for (User user : itemPageData.getRows()) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", user.getId());
			map.put("name", user.getName());
			map.put("password", user.getPassword());
			map.put("phoneNumber", user.getPhoneNumber());
			map.put("address", user.getAddress());
			map.put("label", user.getLabel());
			map.put("beginTime", DataUtil.dateToString(user.getBeginTime()));
			rows.add(map);
		}
		PageData<Map<String, Object>> pageData = new PageData<Map<String, Object>>();
		pageData.setRows(rows);
		pageData.setTotal(itemPageData.getTotal());
		return pageData;
	}

	@RequestMapping("load/save")
	@ResponseBody
	public String save(User user) {
		String flag = "保存成功";
		if (!user.getId().equals("")) {
			commonServiceUser.update(user);
		} else
			commonServiceUser.save(user);
		return flag;
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

	@RequestMapping("orderList")
	public String orderList(Model model, String userid) {
		User user = commonServiceUser.get(User.class, userid);
		model.addAttribute("item", user);
		return "manager/user/orderList";
	}

	@RequestMapping(value = "load/orderList", method = RequestMethod.GET)
	@ResponseBody
	public PageData<Map<String, Object>> getOrderItems(
			@RequestParam(value = "userid", required = false, defaultValue = "-1") String userid,
			@RequestParam(value = "begin", required = false, defaultValue = "-1") int begin,
			@RequestParam(value = "pageSize", required = false, defaultValue = "-1") int pageSize,
			@RequestParam(value = "conditionDefinition", required = false, defaultValue = "") String conditionDefinition)
			throws UnsupportedEncodingException {
		conditionDefinition = DataUtil.encodURI(conditionDefinition);
		int end = -1;
		if (begin >= 0) {
			end = begin + pageSize;
		}
		userid = userid.replace(" ", "");
		List<UserBuyData> itemList = commonServiceUserBuyData.getByAttribute(UserBuyData.class, "userId", "flag",
				userid, "未下单", false);
		User user = commonServiceUser.get(User.class, userid);
		PageData<UserBuyData> itemPageData = DataUtil.toPageData(itemList, begin, end);
		List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
		for (UserBuyData temp : itemPageData.getRows()) {
			Map<String, Object> map = new HashMap<String, Object>();
			Product product = commonServiceProduct.get(Product.class, temp.getProductId());
			map.put("id", temp.getId());
			map.put("name", product.getName());
			map.put("number", temp.getNumber());
			map.put("productPrice", temp.getProductPrice());
			map.put("address", user.getAddress());
			map.put("flag", temp.getFlag());
			map.put("updateTime", DataUtil.dateToString(temp.getUpdateTime()));
			rows.add(map);
		}
		PageData<Map<String, Object>> pageData = new PageData<Map<String, Object>>();
		pageData.setRows(rows);
		pageData.setTotal(itemPageData.getTotal());
		return pageData;
	}

	@RequestMapping("editOrder")
	public String editOrder(Model model, UserBuyData item,
			@RequestParam(value = "id", required = false, defaultValue = "") String id) {
		if (!id.equals("")) {
			item = commonServiceUserBuyData.get(UserBuyData.class, id);
		}
		model.addAttribute("item", item);
		return "manager/user/editOrder";
	}

	@RequestMapping("load/saveOrder")
	@ResponseBody
	public String saveOrder(UserBuyData item) {
		String flag = "保存成功";
		if (!item.getId().equals("")) {
			commonServiceUserBuyData.update(item);
		} else
			commonServiceUserBuyData.save(item);
		return flag;
	}

	@RequestMapping("load/deleteOrder")
	@ResponseBody
	public Map<String, String> deleteOrder(String id) {
		String flag = "false";
		if (!id.equals("")) {
			commonServiceUserBuyData.deleteById(UserBuyData.class, id);
			flag = "true";
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", flag);
		return map;
	}
}
