package com.store.controls;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.entity.PageData;
import com.store.entity.ProductLabel;
import com.store.services.CommonService;
import com.store.utils.DataUtil;

@Controller
@RequestMapping("/manager/productLabel/")
public class ProductLabelController {
	@Autowired
	private CommonService<ProductLabel, String> commonServiceProductLabel;

	@RequestMapping("list")
	public String list(Model model, ProductLabel product) {

		return "manager/productLabel/list";
	}

	@RequestMapping("edit")
	@ResponseBody
	public ProductLabel edit(@RequestParam(value = "id", defaultValue = "") String id) {
		ProductLabel item = new ProductLabel();
		if (!id.equals("")) {
			item = commonServiceProductLabel.get(ProductLabel.class, id);
		}
		return item;
	}

	@RequestMapping(value = "load/search", method = RequestMethod.GET)
	@ResponseBody
	public PageData<Map<String, Object>> getItems(
			@RequestParam(value = "begin", required = false, defaultValue = "-1") int begin,
			@RequestParam(value = "pageSize", required = false, defaultValue = "-1") int pageSize,
			@RequestParam(value = "conditionDefinition", required = false, defaultValue = "") String conditionDefinition)
			throws UnsupportedEncodingException {
		conditionDefinition = DataUtil.encodURI(conditionDefinition);
		// if (!StringUtils.isEmpty(conditionDefinition)) {
		// conditionDefinition = URLDecoder.decode(conditionDefinition, "utf-8");
		// }
		// StringBuilder sb = new StringBuilder();
		// sb.append("FROM ").append(" product ");
		// sb.append("WHERE 1 = 1 ");
		// sb.append(" order by orderNo ");
		// Query q = dao.getSession().createQuery(sb.toString());
		// if (condition != null) {
		// condition.setLabels(q);
		// }
		int end = -1;
		if (begin >= 0) {
			end = begin + pageSize;
		}
		List<ProductLabel> itemList = commonServiceProductLabel.getAll(ProductLabel.class);
		PageData<ProductLabel> itemPageData = DataUtil.toPageData(itemList, begin, end);
		List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
		for (ProductLabel productLabel : itemPageData.getRows()) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", productLabel.getId());
			map.put("name", productLabel.getName());
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
	public String save(@RequestParam(value = "id", defaultValue = "") String id,
			@RequestParam(value = "name", defaultValue = "") String name) {
		String flag = "保存成功";
		name = DataUtil.encodURI(name);
		ProductLabel productLabel = new ProductLabel();
		productLabel.setName(name);
		if (!id.equals("")) {
			productLabel.setId(id);
			commonServiceProductLabel.update(productLabel);
		} else
			commonServiceProductLabel.save(productLabel);
		return flag;
	}

	@RequestMapping("load/delete")
	@ResponseBody
	public JSONObject delete(String id) throws JSONException {
		boolean flag = false;
		if (!id.equals("")) {
			commonServiceProductLabel.deleteById(ProductLabel.class, id);
			flag = true;
		}
		JSONObject obj = new JSONObject();
		obj.put("flag", flag);
		return obj;
	}
}
