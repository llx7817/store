package com.store.daoImpl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
//import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao.BaseDao;

@Repository("baseDao")
// @Transactional
// public class BaseDao<T> {
// @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
@Transactional
public class BaseDaoImpl<T, PK extends Serializable> implements BaseDao<T, PK> {
	// @Autowired
	// private SessionFactory sessionFactory;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	/**
	 * 获得当前事物的session
	 * 
	 * @return org.hibernate.Session
	 */
	// public Session getSession() {
	// // return this.sessionFactory.openSession();
	// return this.sessionFactory.getCurrentSession();
	// }
	public HibernateTemplate getHibernateTemplate() {
		// return this.sessionFactory.openSession();
		return hibernateTemplate;
		// return this.sessionFactory.getCurrentSession();
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		// return this.sessionFactory.openSession();
		this.hibernateTemplate = hibernateTemplate;
		// return this.sessionFactory.getCurrentSession();
	}

	public HibernateTemplate getSession() {
		// return this.sessionFactory.openSession();
		return this.getHibernateTemplate();
		// return this.sessionFactory.getCurrentSession();
	}

	public T get(Class<T> clazz, PK id) {
		// TODO Auto-generated method stub
		T entity = getSession().get(clazz, id);
		return entity;
	}

	public List<T> getAll(Class<T> clazz) {
		// TODO Auto-generated method stub
		// session.getDelegate();
		return null;
	}

	public void update(T entity) {
		// TODO Auto-generated method stub
		getSession().update(entity);
	}

	// @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	@Transactional
	public void save(T entity) {
		// TODO Auto-generated method stub
		getSession().save(entity);
		// getSession().execute(new HibernateCallback<T>() {
		// public T doInHibernate(Session session) throws HibernateException {
		// session.save(entity);
		// return null;
		// }
		// });
	}

	public void saveOrUpdate(T entity) {
		// TODO Auto-generated method stub
		getSession().saveOrUpdate(entity);
	}

	@Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	public void delete(T entity) {
		// TODO Auto-generated method stub
		getSession().delete(entity);
	}

	public void deleteByKey(Class<T> clazz, PK id) {
		// TODO Auto-generated method stub
		delete(this.get(clazz, id));
	}
}
