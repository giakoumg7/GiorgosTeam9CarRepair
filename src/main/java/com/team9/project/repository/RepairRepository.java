package com.team9.project.repository;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.domain.RepairStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
@Repository
public interface RepairRepository extends JpaRepository<Repair,Long> {


    List<Repair> findAll();

    Optional<Repair> findById(Long Id);

    List<Repair> findByOwner(Person person);

    Repair save(Repair repair);

    List<Repair> findByrepairDateBetween(LocalDateTime fromdate, LocalDateTime toDate);

    void delete(Repair repair);

    List<Repair> findFirst10RepairsByRepairDateBetweenAndRepairStatus(LocalDateTime fromDateTime, LocalDateTime toDateTime, RepairStatus repairStatus);







}
