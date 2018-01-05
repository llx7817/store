package com.store.entity;

import java.io.Serializable;

//@Entity
//@Table(name = "USER")
public class User
		// extends BaseEntity {
		implements Serializable {
	// /**
	// * 用户id
	// */
	// @Id
	// @GenericGenerator(name = "UUID", strategy = "uuid")
	// @GeneratedValue(generator = "UUID")
	// @Column(name = "id")
	// private String id;
	//
	// /**
	// * 用户名
	// */
	// private String name;

	/**
	 * 
	 */
	private static final long serialVersionUID = -7462643725067207273L;

	/**
	 * 用户密码
	 */
	private String password;

	/**
	 * 真实姓名
	 */
	private String realName;

	/**
	 * 移动电话
	 */
	private String mobilePhone;

	/**
	 * 固定电话
	 */
	private String phone;

	/**
	 * 地址
	 */
	private String address;

	/**
	 * 邮箱
	 */
	private String email;

	/**
	 * 组织机构
	 */
	private String orgname;

	/**
	 * 说明
	 */
	private String notes;

	/**
	 * 用户头像
	 */
	private String userIcon;

	// public String getId() {
	// return id;
	// }
	//
	// public void setId(String userid) {
	// this.id = userid;
	// }
	// public String getName() {
	// return name;
	// }
	//
	// public void setName(String name) {
	// this.name = name;
	// }
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserIcon() {
		return userIcon;
	}

	public void setUserIcon(String userIcon) {
		this.userIcon = userIcon;
	}

}
