package com.store.entity;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class PageData<T> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final String PAGE_NUMBER = "pageNumber";

	private static final String PAGE_SIZE = "pageSize";

	private long total = 0;

	private int pageSize = 15;

	private int pageNumber = 1;

	private List<T> rows = null;

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	public int getEndIndex() {
		return getPageNumber() * getPageSize() - 1;
	}

	public int getBeginIndex() {
		return getEndIndex() - getPageSize() + 1;
	}

	public static <T> PageData<T> createPagerData(int pageSize, int pageNumber) {
		PageData<T> pageData = new PageData<T>();
		pageData.setPageSize(pageSize);
		pageData.setPageNumber(pageNumber);
		return pageData;
	}

	public static <T> PageData<T> createPagerData(HttpServletRequest request) {
		PageData<T> pageData = new PageData<T>();
		if (request.getParameter(PAGE_SIZE) != null) {
			pageData.setPageSize(Integer.valueOf(request.getParameter(PAGE_SIZE)));
		}
		if (request.getParameter(PAGE_NUMBER) != null) {
			pageData.setPageNumber(Integer.valueOf(request.getParameter(PAGE_NUMBER)));
		}
		return pageData;
	}
}