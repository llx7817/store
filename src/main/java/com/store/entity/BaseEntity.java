package com.store.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

//@Entity
//@Table(name = "BASEENTITY")
public class BaseEntity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6435219325026949625L;

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
	// public String getBeginTime() {
	// return beginTime;
	// }
	//
	// public void setBeginTime(String userbeginTime) {
	// this.beginTime = userbeginTime;
	// }
	//
	// public String getUpdateTime() {
	// return updateTime;
	// }
	//
	// public void setUpdateTime(String userupdateTime) {
	// this.updateTime = userupdateTime;
	// }
}
