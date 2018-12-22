package com.team9.project.form;

import com.team9.project.domain.RepairStatus;
import com.team9.project.domain.RepairType;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

public class SearchRepairForm {

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime fromDate;
    @DateTimeFormat (iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime toDate;
    private String Afm;
    private String Plate;


    public LocalDateTime getFromDate() {
        return fromDate;
    }

    public void setFromDate(LocalDateTime fromDate) {
        this.fromDate = fromDate;
    }

    public LocalDateTime getToDate() {
        return toDate;
    }

    public void setToDate(LocalDateTime toDate) {
        this.toDate = toDate;
    }

    public String getAfm() {
        return Afm;
    }

    public void setAfm(String afm) {
        Afm = afm;
    }

    public String getPlate() {
        return Plate;
    }

    public void setPlate(String plate) {
        Plate = plate;
    }
}
