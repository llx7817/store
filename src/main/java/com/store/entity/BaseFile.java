package com.store.entity;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Lob;
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
	private long size;
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
	@Lob
	@Basic(fetch = FetchType.LAZY)
	@Column(name = "fileData", columnDefinition = "BLOB", nullable = true)
	private byte[] content;
	// @Column(name = "fileData")
	// private File fileData;
	/**
	 * 名称
	 */
	@Column(name = "name")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getContent() {
		return this.content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	// public File getFileData() {
	// return fileData;
	// }
	//
	// public void setFileData(File fileData) {
	// this.fileData = fileData;
	// }

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

}
