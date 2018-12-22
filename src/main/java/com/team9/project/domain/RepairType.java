package com.team9.project.domain;

public enum RepairType {

    MINOR("Minor"),
    MAJOR("Major");

    private String repairType;

    RepairType(String repairType) {
        this.repairType = repairType;
    }
}
