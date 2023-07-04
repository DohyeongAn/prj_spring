package com.mycompany.app.infra.code;

import java.util.List;

import com.mycompany.app.infra.code.Code;
import com.mycompany.app.infra.code.CodeServiceImpl;
import com.mycompany.app.infra.code.CodeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.codegroup.CodeGroup;
import com.mycompany.app.infra.codegroup.CodeGroupServiceImpl;
import com.mycompany.app.infra.codegroup.CodeGroupVo;

@Controller
public class CodeController {

    @Autowired
    CodeServiceImpl service;
    @Autowired
    CodeGroupServiceImpl groupService;

    @RequestMapping("/codeList")
    public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) {
        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            List<Code> list = service.selectList(vo);
            model.addAttribute("list", list);
        } else {
//			by pass
        }

        return "xdm/infra/code/codeList";
    }

    @RequestMapping("/codeForm")
    public String codeForm(CodeVo vo, Model model, CodeGroupVo groupvo, Model groupModel) {
        model.addAttribute("item", service.selectOne(vo));
        groupModel.addAttribute("group", groupService.selectList(groupvo));
        return "xdm/infra/code/codeForm";
    }

    @RequestMapping("/codeUpdate")
    public String codeUpdate(Code dto) {
        service.update(dto);
        return "redirect:/codeList";
    }

    @RequestMapping("/codeInsert")
    public String codeInsert(Code dto) {
        service.insert(dto);
        return "redirect:/codeList";
    }

    @RequestMapping("/codeUelete")
    public String codeUelete(Code dto) {
        service.uelete(dto);
        return "redirect:/codeList";
    }

}