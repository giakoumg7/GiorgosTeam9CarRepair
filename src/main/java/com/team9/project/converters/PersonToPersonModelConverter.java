package com.team9.project.converters;

import com.team9.project.domain.Person;
import com.team9.project.model.PersonModel;
import org.springframework.stereotype.Component;

@Component
public class PersonToPersonModelConverter {


    public PersonModel mapToModel(Person person) {

        PersonModel personModel = new PersonModel(person.getPersonId(), person.getName(), person.getSurname(), person.getAfm(),
                person.getAddress(), person.getEmail(), person.getUserType(),
                person.getPlateNumber(), person.getCarBrand());///

        return personModel;
    }

}