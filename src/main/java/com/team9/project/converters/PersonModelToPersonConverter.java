package com.team9.project.converters;

import com.team9.project.domain.Person;
import com.team9.project.model.PersonModel;
import org.springframework.stereotype.Component;

@Component
public class PersonModelToPersonConverter {

    public Person convertModelToPerson(PersonModel personModel, Person person) {

        person.setPersonId(personModel.getId());
        person.setName(personModel.getName());
        person.setSurname(personModel.getSurname());
        person.setAfm(personModel.getAfm());
        person.setAddress(personModel.getAddress());
        person.setEmail(personModel.getEmail());
        person.setUserType(personModel.getUserType());
        person.setPlateNumber(personModel.getPlateNumber());
        person.setCarBrand(personModel.getCarBrand());

        return person;
    }
}
