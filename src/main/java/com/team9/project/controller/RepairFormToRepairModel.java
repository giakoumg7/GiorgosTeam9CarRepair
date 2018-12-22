package com.team9.project.controller;

import com.team9.project.form.RepairForm;
import com.team9.project.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairFormToRepairModel {

    public RepairModel mapToRepairModel(RepairForm repairForm) {
        RepairModel repairModel = new RepairModel();
        repairModel.setId(repairForm.getId());
        repairModel.setDate(repairForm.getDate());
        repairModel.setComments(repairForm.getComments());
        repairModel.setAfm(repairForm.getAfm());
        repairModel.setRepairStatus(repairForm.getRepairStatus());
        repairModel.setRepairType(repairForm.getRepairType());
        repairModel.setPrice(repairForm.getPrice());
        return repairModel;
    }
}
