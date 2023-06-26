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

    public String tablesDynamic(CodeGroupVo vo, Model model) {

        System.out.println("vo.getShOption():" + vo.getShOption()) ;
        System.out.println("vo.getShKeyword():" + vo.getShKeyword()) ;

        model.addAttribute("list", service.selectList(vo));

        return "tablesDynamic";
    }
    @RequestMapping("/adminForm")
    public String form(CodeGroupVo vo, Model model) {

        CodeGroup codeGroup = service.selectOne(vo);

        model.addAttribute("item", codeGroup);

        return "adminForm";
    }


}

