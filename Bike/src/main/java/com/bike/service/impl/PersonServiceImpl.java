package com.bike.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bike.dao.PersonDao;
import com.bike.model.Person;
import com.bike.service.PersonService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("personService")
public class PersonServiceImpl implements  PersonService{

	/**
	 * 自动注入持久层Dao对象
	 * */
	@Autowired
	private PersonDao  personDao;
	
	@Override
	@Transactional(readOnly=true)
	public Person login(String name, String password) {
		return personDao.login(name, password);
	}

}
