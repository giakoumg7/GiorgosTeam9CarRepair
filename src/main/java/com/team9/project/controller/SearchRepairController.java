package com.team9.project.controller;

import com.team9.project.form.SearchRepairForm;
import com.team9.project.model.RepairModel;
import com.team9.project.service.RepairServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/")
public class SearchRepairController {


    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    RepairServiceImpl repairService;
    private static final String REPAIRS_ATTR = "repairs";

    @GetMapping(value = "/admin/searchRepair")
    public String search(Model model) {
        model.addAttribute("searchForm", new SearchRepairForm());
        return "/admin/searchRepairForm";
    }

    @GetMapping(value = "/admin/searchRepairResult")
    public String searchForRepairs(Model model, @ModelAttribute(name = "searchForm") SearchRepairForm searchForm) {
        List<RepairModel> repairs = findrepairs(searchForm);
        logger.info("=============================");
        logger.info("====Print repairModel====");
        logger.info(repairs.toString());
        model.addAttribute(REPAIRS_ATTR, repairs);
        return "/admin/searchRepairForm";
    }

    private List<RepairModel> findrepairs(SearchRepairForm searchForm) {
        LocalDateTime fromDate = searchForm.getFromDate();
        LocalDateTime toDate = searchForm.getToDate();
        String Afm = searchForm.getAfm();
        String Plate = searchForm.getPlate();


        if ( (fromDate!= null && toDate !=null )) {
            return repairService.findByrepairDateBetween(fromDate,toDate);
        }
        if ( (fromDate!= null && toDate ==null )) {
            return repairService.findByrepairDateBetween(fromDate,fromDate);
        }
        if(!(Afm.isEmpty())){
            return repairService.findByOwnerAfm(Afm);
        }
        if(!(Plate.isEmpty())){
            return repairService.findByPlate(Plate);
        }
        return repairService.findAll();


    }
}