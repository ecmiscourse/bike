package com.bike.service;

import java.util.List;


public interface BaseService<T> {
	
	T get(int id);
	
	void save(T entity);
	
	
	void update(T entity);
	
	
	void delete(T entity);
	
	
	void delete(int id);
	
	List<T> queryAll();
	
	List<T> queryByPage(String hql , int pageNo, int pageSize);
	
	List<T> queryByPage2(String sql , int pageNo, int pageSize);
	
	long countAll();
	
	long countByHql(String hql);
	
}
