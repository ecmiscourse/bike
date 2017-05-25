package com.bike.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.bike.dao.BaseDao;


@Repository("baseDao")
@SuppressWarnings("unchecked")
@Lazy(true)
public class BaseDaoImpl<T> implements BaseDao<T> {
	@SuppressWarnings("rawtypes")
	private Class clazz; 
	@Resource(name="sessionFactory")
	protected SessionFactory sessionFactory;
	
	@SuppressWarnings("rawtypes")
	public BaseDaoImpl(){
		ParameterizedType type=(ParameterizedType)this.getClass().getGenericSuperclass();
		clazz=(Class)type.getActualTypeArguments()[0];
	}
	protected Session getSession(){
		Session session;
		try {
		    session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
		    session = sessionFactory.openSession();
		}
		return session;
	}
	
	/**
	* getByID
	* @param id
	* @return 
	*/
	
	@Override
	public T get(int id) {
		return(T)getSession().get(clazz, id);
	}
	/**
	* @param entity
	* @return ֵ
	*/
	@Override
	public void save(T entity) {
		getSession().save(entity);
	}

	/**
	* 
	* @param entity
	* @returnֵ
	*/
	@Override
	public void update(T entity) {
		getSession().saveOrUpdate(entity);
	}

	/**
	* 
	* @param entity
	* @return ֵ
	*/
	@Override
	public void delete(T entity) {
		getSession().delete(entity);
	}

	/**
	* 
	* @param id
	* @return ֵ
	*/
	@Override
	public void delete(int id) {
		getSession()
		.createQuery("delete " + clazz.getSimpleName()
			+ " en where en.id = ?0")
		.setParameter("0" , id)
		.executeUpdate();
	}

	/**
	* 
	* @param 
	* @return
	*/
	
	@Override
	public List<T> queryAll() {
		String hql=" SELECT en FROM "+ clazz.getSimpleName() + " en";
		return (List<T>)getSession()
				.createQuery(hql)
				.list();
	}

	/**
	*
	* @param hql
	* @param pageNo
	* @param pageSize 
	* @return
	*/
	@Override
	public List<T> queryByPage(String hql, int pageNo, int pageSize) {
		return getSession()
				.createQuery(hql)
				.setFirstResult((pageNo - 1) * pageSize)
				.setMaxResults(pageSize)
				.list();
	}

	
	/**
	* 
	* @param entityClazz
	* @return long
	*/
	@Override
	public long countAll() {
		List<?> l = getSession().createQuery("select count(*) from "
				+ clazz.getSimpleName()).list();
		if (l != null && l.size() == 1 )
		{
			return (Long)l.get(0);
		}
		return 0;
	}

	/**
	* 
	* @param hql
	* 
	* @return 
	*/
	@Override
	public long countByHql(String hql) {
		List<?> l = getSession().createQuery(hql).list();
		if (l != null && l.size() == 1 )
		{
			return (Long)l.get(0);
		}
		return 0;
	}
	@Override
	public List<T> queryByPage2(String sql, int pageNo, int pageSize) {
		return getSession()
				.createSQLQuery(sql)
				.addEntity(clazz)
				.setFirstResult((pageNo - 1) * pageSize)
				.setMaxResults(pageSize)
				.list();
	}
}
