package com.bike.service.impl;

import com.bike.mapper.PersonMapper;
import com.bike.model.Person;
import com.bike.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("personService")
public class PersonServiceImpl implements  PersonService{

	@Autowired
	private PersonMapper personMapper;
	
	@Override
	public Person login(Person record) {
		return personMapper.login(record);
	}
}
