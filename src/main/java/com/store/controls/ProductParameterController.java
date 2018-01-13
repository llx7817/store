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
import com.store.entity.ProductParameter;
import com.store.services.CommonService;
import com.store.utils.DataUtil;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/manager/productParameter/")
public class ProductParameterController {
	@Autowired
	private CommonService<ProductParameter, String> commonServiceProductParameter;

	@RequestMapping("list")
	public String list(Model model, ProductParameter product) {

		return "manager/productParameter/list";
	}

	@RequestMapping("edit")
	public String edit(ProductParameter item, Model model, @RequestParam(value = "id", defaultValue = "") String id) {
		if (!id.equals("")) {
			item = commonServiceProductParameter.get(ProductParameter.class, id);
		}
		model.addAttribute("item", item);
		List<ProductParameter> productParameterList = commonServiceProductParameter.getAll(ProductParameter.class);
		model.addAttribute("itemList", productParameterList);
		return "manager/productParameter/edit";
	}

	@RequestMapping(value = "load/search", method = RequestMethod.GET)
	@ResponseBody
	public PageData<Map<String, Object>> getItems(
			@RequestParam(value = "begin", required = false, defaultValue = "-1") int begin,
			@RequestParam(value = "pageSize", required = false, defaultValue = "-1") int pageSize,
			@RequestParam(value = "conditionDefinition", required = false, defaultValue = "") String conditionDefinition)
			throws UnsupportedEncodingException {
		// if (!StringUtils.isEmpty(conditionDefinition)) {
		// conditionDefinition = URLDecoder.decode(conditionDefinition, "utf-8");
		// }
		// StringBuilder sb = new StringBuilder();
		// sb.append("FROM ").append(" product ");
		// sb.append("WHERE 1 = 1 ");
		// sb.append(" order by orderNo ");
		// Query q = dao.getSession().createQuery(sb.toString());
		// if (condition != null) {
		// condition.setParameters(q);
		// }
		int end = -1;
		if (begin >= 0) {
			end = begin + pageSize;
		}
		List<ProductParameter> itemList = commonServiceProductParameter.getAll(ProductParameter.class);
		PageData<ProductParameter> itemPageData = DataUtil.toPageData(itemList, begin, end);
		List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
		for (ProductParameter productParameter : itemPageData.getRows()) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", productParameter.getId());
			map.put("name", productParameter.getName());
			// map.put("tranUnit", product.getTranUnit() == null ? "" :
			// product.getTranUnit().getName());
			rows.add(map);
		}
		PageData<Map<String, Object>> pageData = new PageData<Map<String, Object>>();
		pageData.setRows(rows);
		pageData.setTotal(itemPageData.getTotal());
		return pageData;
	}

	@RequestMapping("load/save")
	@ResponseBody
	public String save(ProductParameter productParameter) {
		String flag = "保存成功";
		if (productParameter.getName() != null && productParameter.getName() != "")
			commonServiceProductParameter.save(productParameter);
		else
			flag = "产品名称为空，保存失败";
		return flag;
	}

	@RequestMapping("load/delete")
	@ResponseBody
	public JSONObject delete(String id) {
		boolean flag = false;
		if (!id.equals("")) {
			commonServiceProductParameter.deleteById(ProductParameter.class, id);
			flag = true;
		}
		JSONObject obj = new JSONObject();
		obj.put("flag", flag);
		return obj;
	}
}
