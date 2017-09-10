package com.bike.mapper;

import com.bike.model.Person;

public interface PersonMapper {
    Person login(Person record);
    int addPerson(Person record);
    int deletePerson(int id);
    int updatePerson(Person record);
}
