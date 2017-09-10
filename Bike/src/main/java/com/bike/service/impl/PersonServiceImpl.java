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

	@Override
	public int addPerson(Person record) {
		return personMapper.addPerson(record);
	}

	@Override
	public int deletePerson(int id) {
		return personMapper.deletePerson(id);
	}

	@Override
	public int updatePerson(Person record) {
		return personMapper.updatePerson(record);
	}
}
