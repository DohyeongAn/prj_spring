package com.mycompany.app.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeGroupController {

    @Autowired
    CodeGroupServiceImpl service;
    @RequestMapping("/tablesDynamic")
    public String tablesDynamic(Model model){

//        List<CodeGroup> list = service.selectList();
//        model.addAttribute("list", list);

         model.addAttribute("list", service.selectList());


        return "tablesDynamic";
    }
}
