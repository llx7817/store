package com.store.servicesImpl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao.BaseDao;
import com.store.services.CommonService;

@Service("commonService")
// @Qualifier("CommonService")
@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = { Exception.class })
public class CommonServiceImpl<T, PK extends Serializable> implements CommonService<T, PK> {
	@Autowired
	// @Resource(name = "baseDao")
	private BaseDao<T, PK> baseDao;

	// @Autowired
	// private JdbcTemplate jdbcTemplate;

	public List<T> queryHql(String hql) {

		return null;
	}

	public List<T> executeSql(String Sql) {
		return null;
	}

	public T get(Class<T> clazz, PK id) {
		// String searchSql = "select * from " + clazz.getSimpleName() + " where id=" +
		// id;
		// List<Map<String, Object>> objectList = jdbcTemplate.queryForList(searchSql);
		// object = jdbcTemplate.queryForObject(searchSql, clazz);
		return baseDao.get(clazz, id);
	}

	public List<T> getAll(Class<T> clazz) {
		// String searchSql = "select * from " + clazz.getSimpleName();
		// List<Map<String, Object>> objectList = jdbcTemplate.queryForList(searchSql);
		List<T> objectList = baseDao.getAll(clazz);
		return objectList;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = { Exception.class })
	public void save(T entity) {
		// TODO Auto-generated method stub
		// genericHibernateDao.save((T) entity);
		baseDao.save(entity);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = { Exception.class })
	public void delete(T entity) {
		// TODO Auto-generated method stub
		baseDao.delete(entity);
	}

	public void deleteById(Class<T> clazz, PK id) {
		baseDao.deleteByKey(clazz, id);
	}
}
