package com.store.controls;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.store.entity.PageData;
import com.store.entity.Product;
import com.store.entity.ProductCategory;
import com.store.entity.ProductLabel;
import com.store.entity.ProductParameter;
import com.store.entity.ProductParameterData;
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
	@Autowired
	private CommonService<ProductParameterData, String> commonServiceProductParameterData;

	@RequestMapping("list")
	public String list(Model model, Product product) {

		return "manager/product/list";
	}

	@RequestMapping("edit")
	public String edit(Model model, Product item,
			@RequestParam(value = "id", required = false, defaultValue = "") String id) {
		List<ProductLabel> productLabelList = commonServiceProductLabel.getAll(ProductLabel.class);
		List<ProductCategory> productCategoryList = commonServiceProductCategory.getAll(ProductCategory.class);
		List<ProductParameter> productParameterList = commonServiceProductParameter.getAll(ProductParameter.class);
		List<Map<String, String>> productParameterMapList = new ArrayList<Map<String, String>>();
		for (ProductParameter productParameter : productParameterList) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", productParameter.getId());
			map.put("name", productParameter.getName());
			// map.put("productId", id);
			if (!id.equals("")) {
				item = commonServiceProduct.get(Product.class, id);
				List<ProductParameterData> productParameterDataList = commonServiceProductParameterData
						.getByAttribute(ProductParameterData.class, "productId", id);
				for (ProductParameterData productParameterData : productParameterDataList) {
					if (productParameterData.getProductParameterId().equals(productParameter.getId())) {
						map.put("productParameterDataId", productParameterData.getId());
						map.put("value", productParameterData.getValue());
						break;
					}
				}
			} else {
				map.put("productParameterDataId", "");
				map.put("value", "");
			}
			productParameterMapList.add(map);
		}
		// productLabelList.add(new ProductLabel());
		model.addAttribute("item", item);
		model.addAttribute("productLabelList", productLabelList);
		model.addAttribute("productCategoryList", productCategoryList);
		model.addAttribute("productParameterList", productParameterMapList);
		// model.addAttribute("productImgIds", item.getProductImgIds());
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
	public Map<String, String> save(Product product) {
		// public String save(Product product, @RequestBody List<ProductParameter>
		// itemList) {
		Map<String, String> map = new HashMap<String, String>();
		String flag = "false";
		if (product.getName() != null && product.getName() != "") {
			if (!product.getId().equals("") && !product.getId().equals(null)) {
				commonServiceProduct.update(product);
			} else
				commonServiceProduct.save(product);
			flag = "true";
		}

		map.put("flag", flag);
		map.put("productId", product.getId());
		return map;
	}

	@RequestMapping("load/saveProductParameterData")
	@ResponseBody
	public Map<String, String> saveProductParameterData(@RequestBody List<ProductParameterData> itemList) {
		String flag = "false";
		for (ProductParameterData productParameterData : itemList) {
			if (!productParameterData.getId().equals("") && !productParameterData.getId().equals(null)) {
				commonServiceProductParameterData.update(productParameterData);
			} else
				commonServiceProductParameterData.save(productParameterData);
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", flag);
		return map;
	}

	@RequestMapping("load/delete")
	@ResponseBody
	public Map<String, String> delete(String id) {
		String flag = "false";
		if (!id.equals("")) {
			commonServiceProduct.deleteById(Product.class, id);
			flag = "true";
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", flag);
		return map;
	}
}
