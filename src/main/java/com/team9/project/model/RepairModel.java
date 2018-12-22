package com.team9.project.model;

import com.team9.project.domain.Person;
import com.team9.project.domain.RepairStatus;
import com.team9.project.domain.RepairType;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class RepairModel {

    private long id;
    private LocalDateTime date;
    private RepairStatus repairStatus;
    private RepairType repairType;
    private double price;
    private String afm;
    private String comments;

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

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "RepairModel{" +
                "Id=" + id +
                ",Date=" + date +
                ", repairStatus=" + repairStatus +
                ", repairType=" + repairType +
                ", price=" + price +
                ", afm=" + afm +
                ", comments='" + comments + '\'' +
                '}';
    }

}
