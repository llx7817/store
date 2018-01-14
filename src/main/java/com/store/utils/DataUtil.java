package com.store.utils;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import com.store.entity.PageData;

/**
 * 数据转换工具类
 * 
 * @author hh
 *
 */
public final class DataUtil {
	/*
	 * 用硬编码解决在URL中传递中文
	 */
	public static String encodURI(String str) {
		try {
			str = new String(str.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return str;
	}

	/*
	 * 转换时间
	 */
	public static String dateToString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 小写的mm表示的是分钟
		String str = sdf.format(date);// 转换格式
		// System.out.println("str:" + str);// str:2017-08-16 10:22:15
		return str;
	}

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
