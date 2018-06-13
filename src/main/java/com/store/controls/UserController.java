package com.store.controls;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.entity.Product;
import com.store.entity.User;
import com.store.entity.UserBuyData;
import com.store.services.CommonService;
import com.store.utils.DataUtil;

@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	private CommonService<User, String> commonServiceUser;
	@Autowired
	private CommonService<UserBuyData, String> commonServiceUserBuyData;
	@Autowired
	private CommonService<Product, String> commonServiceProduct;

	// 用户的订单 items_unpaid
	// type="未下单";itemsName="items"
	// listForm(model, userId,type,flag,itemsName);
	@RequestMapping("userForm")
	public String userForm(Model model, String userId) {
		User user = commonServiceUser.get(User.class, userId);
		model.addAttribute("user", user);
		listForm(model, userId, "未下单", false, "items");// 全部订单
		listForm(model, userId, "未付款", true, "items_unpaid");// 待付款的订单
		listForm(model, userId, "未发货", true, "items_undelivered");// 待发货的订单
		listForm(model, userId, "确认收货", true, "items_unreceived");// 待收货的订单
		return "main/user/userForm";
	}
	// public String userForm(Model model, String userId) {
	// User user = commonServiceUser.get(User.class, userId);
	// List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	// List<UserBuyData> listData =
	// commonServiceUserBuyData.getByAttribute(UserBuyData.class, "userId", "flag",
	// userId, "未下单", false);
	// for (UserBuyData temp : listData) {
	// Product product = commonServiceProduct.get(Product.class,
	// temp.getProductId());
	// Map<String, Object> map = new HashMap<String, Object>();
	// map.put("productId", product.getId());
	// map.put("name", product.getName());
	// map.put("orderNumber", temp.getOrderNumber());
	// map.put("productImgIds", product.getProductImgIds());
	// map.put("originalPrice", product.getOriginalPrice());
	// map.put("productPrice", temp.getProductPrice());
	// map.put("updateTime", DataUtil.dateToString(temp.getUpdateTime()));
	// map.put("flag", temp.getFlag());
	// list.add(map);
	// }
	// model.addAttribute("user", user);
	// model.addAttribute("items", list);
	// return "main/user/userForm";
	// }

	// 用户的购物车
	@RequestMapping("userCart")
	public String userCart(Model model, String userId) {
		User user = commonServiceUser.get(User.class, userId);
		List<UserBuyData> listData = commonServiceUserBuyData.getByAttribute(UserBuyData.class, "userId", "flag",
				userId, "未下单", true);
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		for (UserBuyData temp : listData) {
			Product product = commonServiceProduct.get(Product.class, temp.getProductId());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", temp.getId());
			map.put("name", product.getName());
			map.put("productImgIds", product.getProductImgIds());
			map.put("originalPrice", product.getOriginalPrice());
			map.put("productPrice", product.getPromotionPrice());
			map.put("number", temp.getNumber());
			map.put("inventory", product.getInventory());// 库存
			map.put("totalPrice", product.getPromotionPrice() * temp.getNumber());// 总价
			// map.put("flag", temp.getFlag());
			list.add(map);
		}
		model.addAttribute("user", user);
		model.addAttribute("items", list);
		return "main/user/userCart";
	}

	// 将商品加入购物车
	@RequestMapping("addCart")
	@ResponseBody
	public String addCart(String userId, String productId, int number) {
		// Map<String, String> map = new HashMap<String, String>();
		UserBuyData userBuyData = new UserBuyData();
		userBuyData.setProductId(productId);
		userBuyData.setUserId(userId);
		userBuyData.setNumber(number);
		userBuyData.setFlag("未下单");
		commonServiceUserBuyData.save(userBuyData);
		String flag = "true";
		return flag;
	}

	// 将商品加入订单
	@RequestMapping("addForm")
	@ResponseBody
	public String addForm(String userId, String orderIds) {
		// Map<String, String> map = new HashMap<String, String>();
		UserBuyData userBuyData = new UserBuyData();
		String[] orderIdList = orderIds.split(",");
		// 利用当前时间生成订单号
		// Date date = new Date();
		// SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		// String nowTime = dateFormat.format(date);
		for (String temp : orderIdList) {
			userBuyData = commonServiceUserBuyData.get(UserBuyData.class, temp);
			userBuyData.setFlag("未付款");
			String orderNumber = "" + System.currentTimeMillis();// 一个13位的时间戳;
			userBuyData.setOrderNumber(orderNumber);
			Product product = commonServiceProduct.get(Product.class, userBuyData.getProductId());
			userBuyData.setProductPrice(product.getPromotionPrice());
			commonServiceUserBuyData.update(userBuyData);
		}
		String flag = "true";
		return flag;
	}

	@RequestMapping("delete")
	@ResponseBody
	public String delete(String id) {
		String flag = "false";
		if (!id.equals("")) {
			commonServiceUserBuyData.deleteById(UserBuyData.class, id);
			flag = "true";
		}
		// Map<String, String> map = new HashMap<String, String>();
		// map.put("flag", flag);
		return flag;
	}

	// type="未下单";itemsName="items"
	public void listForm(Model model, String userId, String type, boolean flag, String itemsName) {
		// User user = commonServiceUser.get(User.class, userId);
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		List<UserBuyData> listData = commonServiceUserBuyData.getByAttribute(UserBuyData.class, "userId", "flag",
				userId, type, flag);
		for (UserBuyData temp : listData) {
			Product product = commonServiceProduct.get(Product.class, temp.getProductId());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("productId", product.getId());
			map.put("name", product.getName());
			map.put("number", temp.getNumber());
			map.put("orderNumber", temp.getOrderNumber());// 订单号
			map.put("productImgIds", product.getProductImgIds());
			map.put("originalPrice", product.getOriginalPrice());
			map.put("productPrice", temp.getProductPrice());
			map.put("updateTime", DataUtil.dateToString(temp.getUpdateTime()));
			map.put("flag", temp.getFlag());
			list.add(map);
		}
		// model.addAttribute("user", user);
		model.addAttribute(itemsName, list);
	}

}
