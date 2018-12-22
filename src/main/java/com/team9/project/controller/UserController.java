package com.team9.project.controller;

import com.team9.project.converters.PersonModelToPersonConverter;
import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.form.SearchRepairForm;
import com.team9.project.model.PersonModel;
import com.team9.project.service.AdminServiceImp;
import com.team9.project.service.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.validation.constraints.Null;
import java.net.Authenticator;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class UserController {

    @Autowired
    AdminServiceImp adminServiceImp;
    PersonModelToPersonConverter converter;
    @Autowired
    PersonServiceImpl personService;

    @GetMapping(value = "/user/main")
    public String showAdminPage(Model model) {

        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        Person person = personService.findByEmail(username);
        List<Repair> repairs = (List<Repair>) person.getRepairs();
        model.addAttribute("personrepairs" ,repairs);
        return "/user/main";
    }


}
