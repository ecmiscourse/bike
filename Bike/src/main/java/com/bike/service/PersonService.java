package com.bike.service;

import com.bike.model.Person;
import org.springframework.stereotype.Service;

@Service
public interface PersonService {
	Person login(Person record);
}
