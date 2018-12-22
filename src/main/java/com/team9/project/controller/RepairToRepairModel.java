package com.team9.project.controller;

import com.team9.project.domain.Repair;
import com.team9.project.form.RepairForm;
import com.team9.project.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairToRepairModel {

    public RepairModel mapToRepairModel(Repair repair) {
        RepairModel repairModel = new RepairModel();
        repairModel.setId(repair.getRepairId());
        repairModel.setDate(repair.getRepairDate());
        repairModel.setComments(repair.getComment());
        repairModel.setAfm(repair.getOwner().getAfm());
        repairModel.setRepairStatus(repair.getRepairStatus());
        repairModel.setRepairType(repair.getRepairType());
        repairModel.setPrice(repair.getPrice());
        return repairModel;
    }
}
