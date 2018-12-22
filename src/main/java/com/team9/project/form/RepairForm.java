package com.team9.project.form;


import com.team9.project.domain.Person;
import com.team9.project.domain.RepairStatus;
import com.team9.project.domain.RepairType;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class RepairForm {



    private long Id;
    @DateTimeFormat (iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime date;
    private RepairStatus repairStatus;
    private RepairType repairType;
    private double price;
    private String afm;
    private String comments;


    public long getId() {
        return Id;
    }

    public void setId(long id) {
        Id = id;
    }

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public RepairStatus getRepairStatus() {
        return repairStatus;
    }

    public void setRepairStatus(RepairStatus repairStatus) {
        this.repairStatus = repairStatus;
    }

    public RepairType getRepairType() {
        return repairType;
    }

    public void setRepairType(RepairType repairType) {
        this.repairType = repairType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
