package com.store.dao;

import java.util.List;

public interface BaseDao<T, PK> {
	// 根据主键获取实体。如果没有相应的实体，返回 null。
	public T get(Class<T> clazz, PK id);

	public List<?> find(String queryString, Object values);
	// 根据主键获取实体并加锁。如果没有相应的实体，返回 null。
	// public T getWithLock(Class<T> clazz, PK id, LockMode lock);

	// 根据主键获取实体。如果没有相应的实体，抛出异常。
	// public T load(PK id);
	// public T load(Class<T> clazz, PK id);

	// 根据主键获取实体并加锁。如果没有相应的实体，抛出异常。
	// public T loadWithLock(PK id, LockMode lock);
	// public T loadWithLock(Class<T> clazz, PK id, LockMode lock);

	// 获取全部实体。
	// public List<T> loadAll();
	public List<T> getAll(Class<T> clazz);
	// loadAllWithLock() ?

	// 更新实体
	public void update(T entity);

	// 更新实体并加锁
	// public void updateWithLock(T entity, LockMode lock);

	// 存储实体到数据库
	public void save(T entity);

	// saveWithLock()

	// 增加或更新实体
	public void saveOrUpdate(T entity);

	// 增加或更新集合中的全部实体
	// public void saveOrUpdateAll(Collection<T> entities);

	// 删除指定的实体
	public void delete(T entity);

	// 加锁并删除指定的实体
	// public void deleteWithLock(T entity, LockMode lock);

	// 根据主键删除指定实体
	// public void deleteByKey(PK id);
	public void deleteByKey(Class<T> clazz, PK id);

	// 根据主键加锁并删除指定的实体
	// public void deleteByKeyWithLock(PK id, LockMode lock);
	// public void deleteByKeyWithLock(Class<T> clazz, PK id, LockMode lock);

	// 删除集合中的全部实体
	// public void deleteAll(Collection<T> entities);

}
