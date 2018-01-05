package com.store.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 产品标签
 * 
 * @author hh
 *
 */
@Entity
@Table(name = "PRODUCTLABEL")
public class ProductLabel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7282345404607813544L;

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
}
