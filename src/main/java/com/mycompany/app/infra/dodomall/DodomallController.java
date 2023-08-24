package com.mycompany.app.infra.dodomall;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class DodomallController {

    @Autowired
    DodomallServiceImpl service;

    @RequestMapping("/adminDodomallList")

    public String adminDodomallList(@ModelAttribute("vo") DodomallVo vo, Model model) {

        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            List<Dodomall> list = service.selectList(vo);
            model.addAttribute("list", list);
        } else {
            //	by pass
        }

        return "admin/infra/dodomall/adminDodomallList";
}
@RequestMapping("/dodomall")
    public String dodomall(@ModelAttribute("vo") DodomallVo vo, Model model) {

        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            List<Dodomall> list = service.selectList(vo);
            model.addAttribute("list", list);
        } else {
            //	by pass
        }

        return "user/infra/index/dodomall";
}





    @RequestMapping("/detail")
    public String detail(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "user/infra/index/detail";
    }
    @RequestMapping("/chatWrap")
    public String chatWrap(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "user/infra/index/chatWrap";
    }



    @RequestMapping("/adminDodomallView")
    public String adminDodomallView(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "admin/infra/dodomall/adminDodomallView";
    }

    @RequestMapping("/adminDodomallUpdtForm")
    public String adminDodomallUpdtForm(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "admin/infra/dodomall/adminDodomallUpdtForm";
    }

    @RequestMapping("/adminDodomallDelForm")
    public String adminDodomallDelForm(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "admin/infra/dodomall/adminDodomallDelForm";
    }

    @RequestMapping("/adminDodomallInsForm")
    public String adminDodomallInsForm(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "admin/infra/dodomall/adminDodomallInsForm";
    }

@RequestMapping("/adminDodomallForm")
    public String adminDodomallForm(DodomallVo vo, Model model) {

        Dodomall Dodomall = service.selectOne(vo);

        model.addAttribute("item", Dodomall);

        return "admin/infra/dodomall/adminDodomallForm";
    }

    @RequestMapping("/adminDodomallUpdt")
    public String adminDodomallUpdt(Dodomall dto) {

        service.update(dto);

        return "redirect:/adminDodomallList";
    }

    @RequestMapping("/adminDodomallDel")
    public String adminDodomallDelete(Dodomall dto) {

        service.delete(dto);

        return "redirect:/adminDodomallList";
    }

    @RequestMapping("/adminDodomallIns")
    public String adminDodomallInsert(Dodomall dto) {

        service.insert(dto);

        return "redirect:/adminDodomallList";
    }

    @RequestMapping("/adminDodomallUelete")
    public String adminDodomallUelete(Dodomall dto) {

        service.uelete(dto);

        return "redirect:/adminDodomallList";
    }

}
