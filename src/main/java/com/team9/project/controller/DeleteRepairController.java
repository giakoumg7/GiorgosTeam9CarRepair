package com.team9.project.controller;

import com.team9.project.form.RepairForm;
import com.team9.project.service.RepairServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class DeleteRepairController {

    @Autowired
    RepairServiceImpl repairService;

    @Autowired
    private RepairFormToRepairModel mapper;

    private static final String REPAIR_FORM = "repairForm";


    @GetMapping("/admin/deleteRepair/{id}")
    public String deleteRepairGet (Model model, @PathVariable(name = "id") String id ) {

        RepairForm repairForm = repairService.locate(Long.valueOf(id));
        model.addAttribute(REPAIR_FORM,
                repairForm);
        return "admin/deleteRepairForm";
    }

    @PostMapping(value = "/admin/deleteRepair")
    public String deleteRepairGet(Model model,
                                  @Valid @ModelAttribute(REPAIR_FORM)
                                          RepairForm repairForm,
                                  BindingResult bindingResult) {


        // if (bindingResult.hasErrors()) {
        //     //have some error handling here, perhaps add extra error messages to the model
        //     //model.addAttribute(ERROR_MESSAGE, "an error occurred");
        //     return "addRepair";
        // }
        repairService.delete(repairForm.getId());
        //RepairModel repairModel = mapper.mapToRepairModel(repairForm);
        //repairService.delete(repairModel);
        return "redirect:/admin/searchRepair";
    }
}
