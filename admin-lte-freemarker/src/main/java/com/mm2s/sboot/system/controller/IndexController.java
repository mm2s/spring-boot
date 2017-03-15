package com.mm2s.sboot.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class IndexController {

    @RequestMapping("/")
    String login(Model model){
        model.addAttribute("time",new Date());
        return "system/index";
    }

}
