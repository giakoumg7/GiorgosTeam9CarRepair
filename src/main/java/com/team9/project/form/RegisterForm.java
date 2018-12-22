package com.team9.project.form;

import com.team9.project.domain.CarBrand;
import com.team9.project.domain.UserType;

import javax.validation.constraints.*;

public class RegisterForm {

    @NotEmpty
    @Size(min = 3, max = 15, message = "Name should be between {min} and {max} characters.")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Invalid name")
    private String name;

    @NotEmpty
    @Size(min = 3, max = 25, message = "Surname should be between {min} and {max} characters.")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Invalid surname")
    private String surname;

    @NotEmpty
    @Size(min = 9, max = 9, message = "AFM should be between {max} characters.")
    @Pattern(regexp = "^[0-9]*$", message = "Invalid afm")
    private String afm;

    @NotEmpty
    @Size(min = 6, max = 40, message = "Password should be between {min} and {max} characters.")
    @Pattern(regexp = "^[a-zA-Z0-9@#$%^&]*$", message = "Invalid password")
    private String password;

    @Email
    @NotEmpty
    @Pattern(regexp = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,63}$", message = "Invalid e-mail")
    private String email;

    @NotEmpty
    @Size(min = 5, max = 30, message = "address should be between {min} and {max} characters." )
    private String address;

    private UserType userType;

    @NotEmpty
    @Size(min = 8, max = 8, message = "Plate number should be {max} characters.")
    private String plateNumber;

    private CarBrand carBrand;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
}
