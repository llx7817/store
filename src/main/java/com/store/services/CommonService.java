package com.store.services;

import java.util.List;

public interface CommonService<T, PK> {
	// @Autowired
	// @Qualifier("jdbcTemplate")
	// private JdbcTemplate jdbcTemplate;

	public List<T> queryHql(String hql);

	public List<T> executeSql(String Sql);

	public T get(Class<T> clazz, PK id);

	public List<T> getAll(Class<T> clazz);

	public void delete(T entity);

	public void deleteById(Class<T> clazz, PK id);

	public void save(T entity);

	public void update(T entity);

	// public Map<String, Object> getByAttribute2(Class<T> clazz, String attribute,
	// String value);

	public List<T> getByAttribute(Class<T> clazz, String attribute, String value);

	public List<T> getByAttribute(Class<T> clazz, String attribute, String noAttribute, String value,
			String noAttributeValue, boolean flag);
}
