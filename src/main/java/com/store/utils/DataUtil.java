package com.store.utils;

import java.util.Collections;
import java.util.List;

import com.store.entity.PageData;

/**
 * 数据转换工具类
 * 
 * @author hh
 *
 */
public final class DataUtil {

	public static <T> PageData<T> toPageData(List<T> list, int begin, int end) {
		List<T> subList = subList(list, begin, end);
		// List<T> subList = new ArrayList<T>();
		// for (int i = begin; i <= end; i++) {
		// subList.add(list.get(i));
		// }
		PageData<T> page = new PageData<T>();
		page.setTotal(list == null ? 0 : list.size());
		page.setRows(subList);
		return page;
	}

	private static <T> List<T> subList(List<T> list, int begin, int end) {
		if (list.isEmpty()) {
			return Collections.emptyList();
		}
		if (begin < 0) {
			begin = 0;
		}
		if (end < 0 || end > list.size()) {
			end = list.size();
		}
		if (begin >= end) {
			return Collections.emptyList();
		}
		return list.subList(begin, end);
	}
}
