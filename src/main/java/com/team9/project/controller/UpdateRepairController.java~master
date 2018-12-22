package com.team9.project.controller;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.form.RepairForm;
import com.team9.project.model.RepairModel;
import com.team9.project.service.RepairServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


@Controller
@RequestMapping("/")
public class UpdateRepairController { private final Logger logger = LoggerFactory.getLogger(this.getClass());

    private static final String REPAIR_FORM = "repairForm";

    @Autowired
    RepairServiceImpl repairService;

    @Autowired
    private RepairFormToRepairModel mapper;


    @GetMapping("/admin/addRepair")
    public String addrepairFormGet (Model model) {
        model.addAttribute(REPAIR_FORM,
                new RepairForm());
        return "admin/addRepair";
    }

    @PostMapping(value = "/admin/addRepair")
    public String addRepairFormPost(Model model,
                           @Valid @ModelAttribute(REPAIR_FORM)
                                   RepairForm repairForm,
                           BindingResult bindingResult) {


       // if (bindingResult.hasErrors()) {
       //     //have some error handling here, perhaps add extra error messages to the model
       //     //model.addAttribute(ERROR_MESSAGE, "an error occurred");
       //     return "addRepair";
       // }

        RepairModel repairModel = mapper.mapToRepairModel(repairForm);
        repairService.create(repairModel);
        return "redirect:/";
    }

    @GetMapping("/admin/updateRepair/{id}")
    public String updateRepairGet (Model model, @PathVariable(name = "id") String id ) {

        RepairForm repairForm = repairService.locate(Long.valueOf(id));
        model.addAttribute(REPAIR_FORM,
                repairForm);
        return "admin/updateRepairForm";
    }

    @PostMapping(value = "/admin/updateRepair")
    public String updateRepairGet(Model model,
                           @Valid @ModelAttribute(REPAIR_FORM)
                                   RepairForm repairForm,
                           BindingResult bindingResult) {


        // if (bindingResult.hasErrors()) {
        //     //have some error handling here, perhaps add extra error messages to the model
        //     //model.addAttribute(ERROR_MESSAGE, "an error occurred");
        //     return "addRepair";
        // }

        RepairModel repairModel = mapper.mapToRepairModel(repairForm);
        repairService.update(repairModel);
        return "redirect:/";
    }
































    @GetMapping("/repair/repairs")
    public String repair (Model model, @RequestParam(value = "id") Long id) {
        Repair repair;
        repair = repairService.findById(id);
        model.addAttribute("name", repair.getRepairDate());
        model.addAttribute("surname", repair.getComment());

        return "hello";


    }

    @GetMapping("/repairsByPersonId")
    public String repairByPersonId (Model model, @RequestParam(value = "id") Long id) {
        List<Repair> repair;
        Person person = new Person(id);


        repair = (List<Repair>) repairService.findRepairByPersonId(person);
        logger.info("=============================");
        logger.info("====Getting all Repairs====");
        //repairService.findRepairByPersonId(person).forEach(repairl -> logger.info(repairl.toString()));
        model.addAttribute("repair", repair);
        String repairString = repair.toString();
        model.addAttribute("surname", repairString);

        return "listings";


    }

}
