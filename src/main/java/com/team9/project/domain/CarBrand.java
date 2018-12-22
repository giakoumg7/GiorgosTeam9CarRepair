package com.team9.project.domain;

public enum CarBrand {

    ALFA_ROMEO("Alfa Romeo"),
    ASTON_MARTIN("Aston Martin"),
    AUDI("Audi"),
    BENTLEY("Bentley"),
    BMW("BMW"),
    BUGATTI("Buggati"),
    CHEVROLET("Chevrolet"),
    CHRYSLER("Chrysler"),
    CITROEN("Citroen"),
    FERRARI("Ferrari"),
    FIAT("Fiat"),
    FORD("Ford"),
    HONDA("Honda"),
    HYUNDAI("Hyundai"),
    JAGUAR("Jaguar"),
    JEEP("Jeep"),
    LAMBORGHINI("Lamborghini"),
    LAND_ROVER("Land Rover"),
    MAZDA("Mazda"),
    MERCEDES_BENZ("Mercedes Benz"),
    MINI("Mini"),
    NISSAN("Nissan"),
    PEUGEOT("Peugeot"),
    PORSCHE("Porsche"),
    SUZUKI("Suzuki"),
    TOYOTA("Toyota"),
    VOLVO("Volvo");

    private String brandName;

    CarBrand(String brandName) {
        this.brandName = brandName;
    }

    public String getBrandName() {
        return brandName;
    }
}
