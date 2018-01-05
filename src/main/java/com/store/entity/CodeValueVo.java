package com.store.entity;

import java.io.Serializable;

/**
 * 
 * 字段命，字段值封装类型 主要用于条件的封装
 * 
 * 
 */
public class CodeValueVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -816873505990333967L;

	/** 字段名称 */
	private String code;

	/** 字段值 */
	private String value;

	/** 条件类型 */
	private int style = 0;

	public CodeValueVo(String code, String value, int style) {
		this.code = code;
		this.value = value;
		this.style = style;
	}

	public String getCode() {
		return code;
	}

	public String getValue() {
		return value;
	}

	public int getStyle() {
		return style;
	}
}
