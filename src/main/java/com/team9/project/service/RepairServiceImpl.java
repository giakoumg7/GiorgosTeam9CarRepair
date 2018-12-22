package com.team9.project.service;

import com.team9.project.controller.RepairToRepairModel;
import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.exception.PersonNotFoundException;
import com.team9.project.form.RepairForm;
import com.team9.project.model.RepairModel;
import com.team9.project.repository.RepairRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class RepairServiceImpl implements RepairService {

    @Autowired
    RepairRepository repairRepository;

    @Autowired
    PersonService personService;

    @Autowired
    private RepairToRepairModel mapper;

    public List<RepairModel> findAll(){
        return repairRepository.findAll()
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());

    }


    public Repair findById(Long Id) {
        return repairRepository.findById(Id)
                .orElseThrow(PersonNotFoundException::new);

    }

    public List<Repair> findRepairByPersonId(Person person){
        return
                repairRepository.findByOwner(person);
    }



    public Repair create(RepairModel repairModel) {
        Person person = personService.findByAfm(repairModel.getAfm());
        Repair repair = new Repair(repairModel.getDate(),repairModel.getRepairStatus(),
                repairModel.getRepairType(),(Double) repairModel.getPrice(),person,repairModel.getComments());
        return       repairRepository.save(repair);

    }

    public RepairForm locate(Long Id){
        Repair repair = this.findById(Id);
        RepairForm repairForm = new RepairForm();
        repairForm.setId(repair.getRepairId());
        repairForm.setAfm(repair.getOwner().getAfm());
        repairForm.setComments(repair.getComment());
        repairForm.setDate(repair.getRepairDate());
        repairForm.setPrice(repair.getPrice());
        repairForm.setRepairStatus(repair.getRepairStatus());
        repairForm.setRepairType(repair.getRepairType());
        return repairForm;
    }

    public Repair update(RepairModel repairModel) {
        Person person = personService.findByAfm(repairModel.getAfm());
        Repair repair = this.findById(repairModel.getId());
        repair.setComment(repairModel.getComments());
        repair.setOwner(person);
        repair.setPrice(repairModel.getPrice());
        repair.setRepairDate(repairModel.getDate());
        repair.setRepairStatus(repairModel.getRepairStatus());
        repair.setRepairType(repairModel.getRepairType());
        return       repairRepository.save(repair);

    }

    public List<RepairModel> findByrepairDateBetween(LocalDateTime fromDate,LocalDateTime toDate){
        return repairRepository.findByrepairDateBetween(fromDate,toDate)
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());

    }
    public List<RepairModel> findByOwnerAfm(String Afm){
        Person person = personService.findByAfm(Afm);
        List<Repair> repairs = this.repairRepository.findByOwner(person);
        return repairs
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    public List<RepairModel> findByPlate(String plate){
        Person person = personService.findByplateNumer(plate);
        List<Repair> repairs = this.repairRepository.findByOwner(person);
        return repairs
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public void delete(Long id){
        repairRepository.deleteById(id);
    }

}