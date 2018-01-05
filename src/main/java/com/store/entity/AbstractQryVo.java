/**
 * @版权所有 聚光科技（杭州）股份有限公司
 * 
 */
package com.store.entity;

import org.springframework.util.StringUtils;

/**
 * 查询条件的抽象类
 * 
 * Date: 2014-12-26
 * 
 * @author wenjun_wu
 * @version 1.0
 * 
 */
public abstract class AbstractQryVo {
	/**
	 * 名称，一般为输入框类型
	 */
	protected String name = "";

	/**
	 * 类型，一般为下拉框或单选框类型
	 */
	protected String type = "";

	/**
	 * 起始时间
	 */
	protected String startDate;

	/**
	 * 结束时间
	 */
	protected String endDate;

	/**
	 * 排序字段
	 */
	protected String orderBy = "";

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getOrderBy() {
		return StringUtils.trimAllWhitespace(orderBy);
		// return StringUtils.trim(orderBy);
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public abstract String getQry();
}
