package com.store.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 产品分类
 * 
 * @author hh
 *
 */
@Entity
@Table(name = "PRODUCTCATEGORY")
// public class ProductCategory implements Serializable {
public class ProductCategory {

	/**
	 * id
	 */
	// hibernate注解UUID主键生成策略
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
	 * 上一级的id
	 */
	private String parentProductCategoryId;
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

	public String getParentProductCategoryId() {
		return parentProductCategoryId;
	}

	public void setParentProductCategoryId(String parentProductCategoryId) {
		this.parentProductCategoryId = parentProductCategoryId;
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

	// @ManyToOne
	// // @OneToMany
	// @JoinColumn(name = "parentProductCategoryId")
	// @NotFound(action = NotFoundAction.IGNORE)
	// private ProductCategory parentProductCategory;
	//
	// public ProductCategory getParentProductCategory() {
	// return parentProductCategory;
	// }
	//
	// public void setParentProductCategory(ProductCategory parentProductCategory) {
	// this.parentProductCategory = parentProductCategory;
	// }

}
