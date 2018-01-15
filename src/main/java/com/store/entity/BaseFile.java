package com.store.entity;

import java.io.File;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 文件类
 * 
 * @author hh
 *
 */
@Entity
@Table(name = "BASEFILE")
public class BaseFile extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 文件大小
	 */
	private int size;
	/**
	 * 文件类型
	 */
	private String contentType;

	/**
	 * 文件路径
	 */
	private String path;

	/**
	 * 文件数据
	 */
	@Column(name = "fileData")
	private File fileData;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public File getFileData() {
		return fileData;
	}

	public void setFileData(File fileData) {
		this.fileData = fileData;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

}
