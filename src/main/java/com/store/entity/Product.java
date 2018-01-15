package com.store.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name = "PRODUCT")
public class Product implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	@Id
	@GenericGenerator(name = "UUID", strategy = "uuid")
	@GeneratedValue(generator = "UUID")
	@Column(name = "id")
	private String id;

	/**
	 * 名称
	 */
	private String name;

	/**
	 * 创建时间
	 */
	// private String beginTime;
	private Date beginTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;

	public String getId() {
		return id;
	}

	public void setId(String userid) {
		this.id = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date userbeginTime) {
		this.beginTime = userbeginTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date userupdateTime) {
		this.updateTime = userupdateTime;
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
	@OneToMany(cascade = { CascadeType.ALL })
	@JoinColumn(name = "productImg")
	@NotFound(action = NotFoundAction.IGNORE)
	private Collection<BaseFile> productImgList = new ArrayList<BaseFile>();
	// private BaseEntity productImg;

	public Collection<BaseFile> getProductImg() {
		return productImgList;
	}

	public void setProductImg(Collection<BaseFile> productImgList) {
		this.productImgList = productImgList;
	}

}
