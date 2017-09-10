package com.bike.service;

import com.bike.model.Person;
import org.springframework.stereotype.Service;

@Service
public interface PersonService {
	Person login(Person record);
	int addPerson(Person record);
	int deletePerson(int id);
	int updatePerson(Person record);
}
