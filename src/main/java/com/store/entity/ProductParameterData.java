package com.store.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 某个产品参数对应的值
 * 
 * @author hh
 *
 */
@Entity
@Table(name = "PRODUCTPARAMETERDATA")
public class ProductParameterData implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8405892561837470297L;
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
	 * 产品
	 */
	@ManyToOne
	@JoinColumn(name = "productId")
	// @NotFound(action = NotFoundAction.IGNORE)
	private Product product;

	/**
	 * 产品参数
	 */
	@ManyToOne
	@JoinColumn(name = "productParameterId")
	// @NotFound(action = NotFoundAction.IGNORE)
	private ProductParameter productParameter;

	/**
	 * 产品参数对应的数据
	 */
	private String value;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductParameter getProductParameter() {
		return productParameter;
	}

	public void setProductParameter(ProductParameter productParameter) {
		this.productParameter = productParameter;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}
