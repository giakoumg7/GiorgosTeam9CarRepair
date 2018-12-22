package com.team9.project.domain;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "Repairs")
public class Repair {

    @Id
    @Column(name = "repair_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long repairId;
    @Column(name = "repair_date")
    private LocalDateTime repairDate;
    @Enumerated(EnumType.STRING)
    @Column(name = "repair_status")
    private RepairStatus repairStatus;
    @Enumerated(EnumType.STRING)
    @Column(name = "repair_Type")
    private RepairType repairType;
    @Column(name = "price")
    private double price;

    @ManyToOne(optional = false, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
    @JoinColumn(name = "person_id")
    Person owner;

    @Column(name = "comment", length = 30)
    private String comment;

    public Repair(LocalDateTime date, RepairStatus repairStatus, RepairType repairType, double price, Person owner, String comments){
        this.repairDate = date;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.price = price;
        this.owner = owner;
        this.comment = comments;
    }
    public Repair(long repairId, LocalDateTime repairDate, RepairStatus repairStatus, RepairType repairType, double price, Person owner, String comment) {
        this.repairId = repairId;
        this.repairDate = repairDate;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.price = price;
        this.owner = owner;
        this.comment = comment;
    }
    public Repair(){
    }

    public long getRepairId() {
        return repairId;
    }

    public void setRepairId(long repairId) {
        this.repairId = repairId;
    }

    public LocalDateTime getRepairDate() {
        return repairDate;
    }

    public void setRepairDate(LocalDateTime repairDate) {
        this.repairDate = repairDate;
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

    public Person getOwner() {
        return owner;
    }

    public void setOwner(Person owner) {
        this.owner = owner;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Repair{" +
                "repairDate=" + repairDate +
                ", repairStatus=" + repairStatus +
                ", repairType=" + repairType +
                ", price=" + price +
                ", owner=" + owner +
                ", comment='" + comment + '\'' +
                '}';
    }
}
