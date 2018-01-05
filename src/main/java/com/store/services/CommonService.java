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

	public void save(T entity);
}
