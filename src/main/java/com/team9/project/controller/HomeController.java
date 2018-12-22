package com.team9.project.controller;

import org.springframework.stereotype.Controller;import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

    @GetMapping(value = "/")
    public String showHomePage() {
         return "index";
    }


}
