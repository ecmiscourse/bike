package com.bike.dao;

import org.apache.ibatis.annotations.Param;

import com.bike.model.Person;

public interface PersonDao {
	/**
	 * 登录
	 * @param name
	 * @param password
	 * @return
	 */
	Person login(@Param("name") String name,@Param("password") String password);//不加@Param會報錯org.apache.ibatis.binding.BindingException: Parameter 'name' not found. Available parameters are [ar
}
