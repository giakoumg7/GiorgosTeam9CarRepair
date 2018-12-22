package com.team9.project.service;

import com.team9.project.converters.PersonModelToPersonConverter;
import com.team9.project.converters.PersonToPersonModelConverter;
import com.team9.project.converters.RepairToRepairModelConverter;
import com.team9.project.domain.Person;
import com.team9.project.domain.RepairStatus;
import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;
import com.team9.project.model.RepairModel;
import com.team9.project.repository.PersonRepository;
import com.team9.project.repository.RepairRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminServiceImp implements AdminService {
    @Autowired
    private PersonRepository personRepository;

    @Autowired
    private RepairRepository repairRepository;

    @Autowired
    private PersonToPersonModelConverter personConverter;

    @Autowired
    private PersonModelToPersonConverter personModelToPersonConverter;

    @Autowired
    private RepairToRepairModelConverter repairConverter;

    public Person convertRegisterFormToPerson(RegisterForm registerForm) {
        Person person = new Person(registerForm.getAfm(), registerForm.getName(), registerForm.getSurname(),
                registerForm.getAddress(), registerForm.getEmail(), registerForm.getPassword(),
                registerForm.getCarBrand(), registerForm.getPlateNumber(), registerForm.getUserType());
        return person;
    }

    @Override
    public void registerPerson(RegisterForm registerForm) {
        registerForm.setPassword(new BCryptPasswordEncoder().encode(registerForm.getPassword()));
        personRepository.save(convertRegisterFormToPerson(registerForm));
    }

    @Override
    public List<PersonModel> findPersonsByAfm(String afm) {
        return
                personRepository.findPersonsByAfmContaining(afm)
                        .stream()
                        .map(person -> personConverter.mapToModel(person))
                        .collect(Collectors.toList());
    }

    @Override
    public List<PersonModel> findPersonsByEmail(String email) {
        return

                personRepository.findPersonsByEmailContainingIgnoreCase(email)
                        .stream()
                        .map(person -> personConverter.mapToModel(person))
                        .collect(Collectors.toList());
    }

    @Override
    public List<PersonModel> findAllPersons() {
        return personRepository.findAll()
                .stream()
                .map(person -> personConverter.mapToModel(person))
                .collect(Collectors.toList());
    }

    @Override
    public PersonModel findPersonById(long id) {
        return  personConverter.mapToModel(personRepository.findById(id));
    }

    @Override
    public void updatePerson(PersonModel personModel) {
        Person personToUpdate = personRepository.findById(personModel.getId());
        personRepository.save(personModelToPersonConverter.convertModelToPerson(personModel, personToUpdate));
    }

    @Override
    public void deletePersonById(long id) {
        personRepository.deleteById(id);
    }

    @Override
    public List<RepairModel> findFirst10RepairsByRepairDateBetweenAndRepairStatus(LocalDateTime fromDateTime, LocalDateTime toDateTime, RepairStatus repairStatus) {
        return
                repairRepository.findFirst10RepairsByRepairDateBetweenAndRepairStatus(fromDateTime, toDateTime, repairStatus)
                .stream()
                .map(repair -> repairConverter.mapToModel(repair))
                .collect(Collectors.toList());
    }
}


