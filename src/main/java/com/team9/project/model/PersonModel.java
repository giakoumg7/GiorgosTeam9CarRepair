package com.team9.project.model;

import com.team9.project.domain.CarBrand;
import com.team9.project.domain.UserType;

public class PersonModel {

    private long id;
    private String name;
    private String surname;
    private String afm;
    private String address;
    private String email;
    private UserType userType;
    private String plateNumber;
    private CarBrand carBrand;

    public PersonModel(long id, String name, String surname, String afm, String address,
                       String email, UserType userType, String plateNumber,
                       CarBrand carBrand) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.afm = afm;
        this.address = address;
        this.email = email;
        this.userType = userType;
        this.plateNumber = plateNumber;
        this.carBrand = carBrand;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
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

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public CarBrand getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(CarBrand carBrand) {
        this.carBrand = carBrand;
    }

    @Override
    public String toString() {
        return name + " " + surname + " " + afm + " " + address + " " + email + " " + userType
                + " " +plateNumber + " " + carBrand;
    }
}
