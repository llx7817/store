package com.store.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/**
 * 通用的持久化基类 <br/>
 * id默认为32位的UUID<br/>
 * Date: 2012-11-29
 * 
 * @author caiping_he
 * @version 3.0.0
 * 
 */
@MappedSuperclass
public class TimestampPersistent  {

	/**
	 * 创建时间
	 */
	@Column(name = "createTimeStamp", updatable = false)
	private Date createTimeStamp;

	/**
	 * 更新时间
	 */
	@Column(name = "lastChangeTimeStamp")
	private Date lastChangeTimeStamp;

	public Date getCreateTimeStamp() {
		return createTimeStamp;
	}

	public void setCreateTimeStamp(Date createTimeStamp) {
		this.createTimeStamp = createTimeStamp;
	}

	public Date getLastChangeTimeStamp() {
		return lastChangeTimeStamp;
	}

	public void setLastChangeTimeStamp(Date lastChangeTimeStamp) {
		this.lastChangeTimeStamp = lastChangeTimeStamp;
	}

}
