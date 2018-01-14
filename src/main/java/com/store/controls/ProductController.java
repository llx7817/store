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
import com.store.entity.Product;
import com.store.entity.ProductCategory;
import com.store.entity.ProductLabel;
import com.store.entity.ProductParameter;
import com.store.services.CommonService;
import com.store.utils.DataUtil;

@Controller
@RequestMapping("/manager/product/")
public class ProductController {
	@Autowired
	private CommonService<Product, String> commonServiceProduct;
	@Autowired
	private CommonService<ProductLabel, String> commonServiceProductLabel;
	@Autowired
	private CommonService<ProductParameter, String> commonServiceProductParameter;
	@Autowired
	private CommonService<ProductCategory, String> commonServiceProductCategory;

	@RequestMapping("list")
	public String list(Model model, Product product) {

		return "manager/product/list";
	}

	@RequestMapping("add")
	public String add(Model model, Product product) {

		return "manager/product/edit";
	}

	@RequestMapping("edit")
	public String edit(Product item, Model model, @RequestParam(value = "id", defaultValue = "") String id) {
		if (!id.equals("")) {
			item = commonServiceProduct.get(Product.class, id);
		}
		model.addAttribute("item", item);
		List<ProductLabel> productLabelList = commonServiceProductLabel.getAll(ProductLabel.class);
		List<ProductParameter> productParameterList = commonServiceProductParameter.getAll(ProductParameter.class);
		List<ProductCategory> productCategoryList = commonServiceProductCategory.getAll(ProductCategory.class);
		// productLabelList.add(new ProductLabel());
		model.addAttribute("productLabelList", productLabelList);
		model.addAttribute("productParameterList", productParameterList);
		model.addAttribute("productCategoryList", productCategoryList);
		model.addAttribute("filename", item.getProductImg());
		return "manager/product/edit";
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
		// condition.setParameters(q);
		// }
		int end = -1;
		if (begin >= 0) {
			end = begin + pageSize;
		}
		List<Product> itemList = commonServiceProduct.getAll(Product.class);
		PageData<Product> itemPageData = DataUtil.toPageData(itemList, begin, end);
		List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
		for (Product product : itemPageData.getRows()) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", product.getId());
			map.put("name", product.getName());
			map.put("productLabel", product.getProductLabel());
			map.put("productCategory", product.getProductCategory());
			map.put("updateTime", DataUtil.dateToString(product.getUpdateTime()));
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
	public String save(Product product) {
		String flag = "保存成功";
		if (product.getName() != null && product.getName() != "") {
			if (!product.getId().equals("") && !product.getId().equals(null)) {
				commonServiceProduct.update(product);
			} else
				commonServiceProduct.save(product);
		} else
			flag = "产品名称为空，保存失败";
		return flag;
	}

	@RequestMapping("load/delete")
	@ResponseBody
	public JSONObject delete(String id) throws JSONException {
		boolean flag = false;
		if (!id.equals("")) {
			commonServiceProduct.deleteById(Product.class, id);
			flag = true;
		}
		JSONObject obj = new JSONObject();
		obj.put("flag", flag);
		return obj;
	}
}
