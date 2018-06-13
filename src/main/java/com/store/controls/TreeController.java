package com.store.controls;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.entity.ProductCategory;
import com.store.services.CommonService;
import com.store.utils.Constant;

@Controller
@RequestMapping("/tree/")
public class TreeController {
	@Autowired
	private CommonService<ProductCategory, String> commonServiceProductCategory;

	// 解决传入前端中文出现乱码的问题： produces = "text/html;charset=UTF-8"
	@RequestMapping(value = "load/category", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String getTree(Model model, @RequestParam(value = "id", required = false) String id) throws JSONException {
		// showAllRegion = false;
		JSONArray jsonArray = new JSONArray();
		ProductCategory rootItem = commonServiceProductCategory
				.getByAttribute(ProductCategory.class, "parentProductCategoryId", Constant.ROOT_CODE).get(0);
		// 根节点
		JSONObject rootObj = new JSONObject();
		rootObj.put("id", rootItem.getId());
		rootObj.put("text", rootItem.getName());
		rootObj.put("state", "open");
		// rootObj.put("checked", "false");
		rootObj.put("attributes", "");
		// regionObj.put("attributes", new JSONObject().put("type", type));
		// 子节点
		List<ProductCategory> childrenList = commonServiceProductCategory.getByAttribute(ProductCategory.class,
				"parentProductCategoryId", rootItem.getId());
		JSONArray rootJsonArray = new JSONArray();
		int count = 0;
		for (ProductCategory childItem : childrenList) {
			JSONObject childObj = new JSONObject();
			childObj.put("id", childItem.getId());
			childObj.put("text", childItem.getName());
			// childObj.put("state", "closed");
			// childObj.put("checked", "false");
			childObj.put("attributes", "");
			List<ProductCategory> children = commonServiceProductCategory.getByAttribute(ProductCategory.class,
					"parentProductCategoryId", childItem.getId());
			if (children.size() > 0) {
				childObj.put("children", getChildTree(children, childItem.getId()));
				childObj.put("state", count == 0 ? "open" : "closed");
				count++;
			}
			rootJsonArray.put(childObj);
		}
		if (rootJsonArray.length() > 0) {
			rootObj.put("children", rootJsonArray);
		}
		jsonArray.put(rootObj);
		model.addAttribute("rootId", rootItem.getId());
		String s = jsonArray.toString();
		return s;
	}

	private JSONArray getChildTree(List<ProductCategory> items, String id) throws JSONException {
		JSONArray jsonArray = new JSONArray();
		for (ProductCategory temp : items) {
			JSONObject childObj = new JSONObject();
			childObj.put("id", temp.getId());
			childObj.put("text", temp.getName());
			// childObj.put("checked", "false");
			childObj.put("attributes", "");
			List<ProductCategory> children = commonServiceProductCategory.getByAttribute(ProductCategory.class,
					"parentProductCategoryId", temp.getId());
			if (children.size() > 0) {
				childObj.put("state", "closed");
				childObj.put("children", getChildTree(children, id));
			} else {
			}
			jsonArray.put(childObj);
		}
		return jsonArray;
	}
}
