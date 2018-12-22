package com.team9.project.service;


import com.team9.project.domain.Person;
import com.team9.project.exception.PersonNotFoundException;
import com.team9.project.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonRepository personRepository;

    @Override
    public List<Person> findAll(){
        return personRepository.findAll();

    }

    @Override
    public Optional <Person> findById(Long id) {
       return personRepository.findById(id);
               //.orElseThrow(PersonNotFoundException::new);
    }

    @Override
    public Person findByemailAndPassword(String email, String password) {
        return (Person) personRepository.findByemailAndPassword(email, password);
    }

    @Override
    public List<Person> getAllPersons() {
        return null;
    }

    @Override
    public Person createPerson(String afm, String name, String surname, String address, String email, String password, String carBrand, String plateNumber, String userType) {
        return null;
    }
    @Override
    public Person findByAfm(String afm){
        return personRepository.findByAfmLike(afm)
                .orElseThrow(PersonNotFoundException::new);

    }


    @Override
    public   Person findByplateNumer(String plate){
        return personRepository.findByplateNumber(plate);

    }

    @Override
    public   Person findByEmail(String email){
        return personRepository.findByEmail(email);

    }





}
