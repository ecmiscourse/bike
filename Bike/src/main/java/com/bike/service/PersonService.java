package com.bike.service;

import com.bike.model.Person;

public interface PersonService {
	/**
	 * 登录
	 * @param name
	 * @param password
	 * @return
	 */
	Person login(String name,String password);
}
