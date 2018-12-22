package com.team9.project.converters;

import com.team9.project.domain.Repair;
import com.team9.project.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairToRepairModelConverter {

    public RepairModel mapToModel(Repair repair) {

        RepairModel repairModel = new RepairModel();
        repairModel.setId(repair.getRepairId());
        repairModel.setDate(repair.getRepairDate());
        repairModel.setRepairStatus(repair.getRepairStatus());
        repairModel.setRepairType(repair.getRepairType());
        repairModel.setPrice(repair.getPrice());
        repairModel.setAfm(repair.getOwner().getAfm());
        repairModel.setComments(repair.getComment());

        return repairModel;
    }
}
