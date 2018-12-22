 package com.team9.project.domain;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "Persons")
public class Person {

    @Id
    @Column(name = "person_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long personId;

    @Column(name = "afm", length = 9, unique = true)
    private String afm;

    @Column(name = "name", length = 15)
    private String name;

    @Column(name = "surname", length = 25)
    private String surname;

    @Column(name = "address", length = 30)
    private String address;

    @Column(name = "email", length = 20, unique = true)
    private String email;

    @Column(name = "password", length = 120, nullable = false)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(name = "car_brand", length = 30)
    private CarBrand carBrand;

    @Column(name = "plate_number", length = 8)
    private String plateNumber;

    @Enumerated(EnumType.STRING)
    @Column(name = "user_type", length = 15, nullable = false)
    private UserType userType;

    @OneToMany(mappedBy="repairId",
            targetEntity=Repair.class,cascade = {CascadeType.REMOVE})
    private Collection repairs;


    public Collection getRepairs() {
        return repairs;
    }

    public void setRepairs(Collection repairs) {
        this.repairs = repairs;
    }

    public Person(long personId) {
         this.personId = personId;
     }

    public Person() {

    }

    public Person(String afm, String name, String surname, String address, String email, String password,
                  CarBrand carBrand, String plateNumber, UserType userType) {
        this.afm = afm;
        this.name = name;
        this.surname = surname;
        this.address = address;
        this.email = email;
        this.password = password;
        this.carBrand = carBrand;
        this.plateNumber = plateNumber;
        this.userType = userType;
    }

    public long getPersonId() {
        return personId;
    }

    public void setPersonId(long personId) {
        this.personId = personId;
    }

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public CarBrand getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(CarBrand carBrand) {
        this.carBrand = carBrand;
    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    @Override
    public String toString() {
        return "Person{" +
                "personId=" + personId +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", AFM='" + afm + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", carBrand=" + carBrand +
                ", plateNumber='" + plateNumber + '\'' +
                ", userType=" + userType +
                '}';
    }
}
