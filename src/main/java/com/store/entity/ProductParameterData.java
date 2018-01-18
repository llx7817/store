package com.store.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 某个产品参数对应的值
 * 
 * @author hh
 *
 */
@Entity
@Table(name = "PRODUCTPARAMETERDATA")
public class ProductParameterData extends BaseEntity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8405892561837470297L;
	/**
	 * 产品参数对应的数据
	 */
	@Column(name = "name")
	private String value;

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	/**
	 * 产品
	 */
	// @ManyToOne
	// @JoinColumn(name = "productIdId")
	// // @NotFound(action = NotFoundAction.IGNORE)
	// private ProductId productId;
	private String productId;
	/**
	 * 产品参数
	 */
	// @ManyToOne
	// @JoinColumn(name = "productParameterIdId")
	// // @NotFound(action = NotFoundAction.IGNORE)
	// private ProductParameterId productParameterId;
	private String productParameterId;

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductParameterId() {
		return productParameterId;
	}

	public void setProductParameterId(String productParameterId) {
		this.productParameterId = productParameterId;
	}

}
