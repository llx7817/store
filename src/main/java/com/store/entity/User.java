package com.store.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "USER")
public class User extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 用户姓名
	 */
	private String name;

	/**
	 * 用户密码
	 */
	private String password;

	/**
	 * 真实姓名
	 */
	private String value;

	/**
	 * 电话号码
	 */
	private String phoneNumber;

	/**
	 * 地址
	 */
	private String address;

	/**
	 * 邮箱
	 */
	private String email;

	/**
	 * 说明
	 */
	private String notes;

	/**
	 * 用户头像
	 */
	private String userIconId;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserIconId() {
		return userIconId;
	}

	public void setUserIconId(String userIconId) {
		this.userIconId = userIconId;
	}

}
