package com.store.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name = "PRODUCT")
public class Product extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 名称
	 */
	@Column(name = "name")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 产品参数 因为有多个id要存，以,隔开
	 */
	// private String productParameter;
	// @OneToMany
	@ManyToOne
	@JoinColumn(name = "productParameterId")
	private ProductParameter productParameter;

	/**
	 * 产品类别
	 */
	@ManyToOne
	@JoinColumn(name = "productCategoryId")
	@NotFound(action = NotFoundAction.IGNORE)
	private ProductCategory productCategory;
	// private String category;

	/**
	 * 产品标签
	 */
	// private String label;
	// @OneToMany
	@ManyToOne
	@JoinColumn(name = "productLabelId")
	@NotFound(action = NotFoundAction.IGNORE)
	private ProductLabel productLabel;

	public ProductCategory getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}

	public ProductLabel getProductLabel() {
		return productLabel;
	}

	public void setProductLabel(ProductLabel productLabel) {
		this.productLabel = productLabel;
	}

	public ProductParameter getProductParameter() {
		return productParameter;
	}

	public void setProductParameter(ProductParameter productParameter) {
		this.productParameter = productParameter;
	}

	// public String getProductParameter() {
	// return productParameter;
	// }
	//
	// public void setProductParameter(String productParameter) {
	// this.productParameter = productParameter;
	// }
	/**
	 * 产品图片
	 */
	@Column(name = "productImg")
	private String productImgIds;

	public String getProductImgIds() {
		return productImgIds;
	}

	public void setProductImgIds(String productImgIds) {
		this.productImgIds = productImgIds;
	}

	/**
	 * 产品细节，详细介绍，图片形式
	 */
	@Column(name = "details")
	private String detailIds;

	public String getDetailIds() {
		return detailIds;
	}

	public void setDetailIds(String detailIds) {
		this.detailIds = detailIds;
	}

	// @OneToMany(cascade = { CascadeType.ALL })
	// @JoinColumn(name = "productImg")
	// @NotFound(action = NotFoundAction.IGNORE)
	// private Collection<BaseFile> productImgList = new ArrayList<BaseFile>();
	// // private BaseEntity productImg;
	//
	// public Collection<BaseFile> getProductImgList() {
	// return productImgList;
	// }
	//
	// public void setProductImgList(Collection<BaseFile> productImgList) {
	// this.productImgList = productImgList;
	// }

}
