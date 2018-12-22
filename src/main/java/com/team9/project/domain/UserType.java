package com.team9.project.domain;

public enum UserType {

    ADMIN("Administrator"),
    USER("User");

    private String userType;

    UserType(String userType) {
        this.userType = userType;
    }
}
