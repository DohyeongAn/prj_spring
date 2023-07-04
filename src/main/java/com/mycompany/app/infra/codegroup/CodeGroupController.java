package com.mycompany.app.infra.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeGroupController {

    @Autowired
    CodeGroupServiceImpl service;

    @RequestMapping("/adminList")

    public String adminList(CodeGroupVo vo, Model model) {
        List<CodeGroup> list = service.selectList(vo);
        model.addAttribute("list", list);
        model.addAttribute("vo", vo);

        return "admin/infra/codegroup/adminList";
    }


    @RequestMapping("/adminForm")
    public String adminForm(CodeGroupVo vo, Model model) {

        CodeGroup codeGroup = service.selectOne(vo);

        model.addAttribute("item", codeGroup);

        return "admin/infra/codegroup/adminForm";
    }
//    @RequestMapping("/codeGroupUpdt")
//    public String codeGroupUpdt() {
//        System.out.println("codeGroupUpdt");
//
//        return "adminForm";
//    }

    @RequestMapping("/adminUpdt")
    public String adminUpdt(CodeGroup dto) {
        System.out.println("adminUpdt");

        service.update(dto);

        return "redirect:/adminList";
    }

    @RequestMapping("/adminDel")
    public String adminDelete(CodeGroup dto) {
        System.out.println("adminDel");

        service.delete(dto);

        return "redirect:/adminList";
    }
    @RequestMapping("/adminIns")
    public String adminIns(CodeGroup dto) {
        System.out.println("adminIns");

        service.insert(dto);

        return "redirect:/adminList";
    }

    @RequestMapping("/adminUelete")
    public String adminUelete(CodeGroup dto) {
        service.uelete(dto);
        return "redirect:/adminList";
    }

}

