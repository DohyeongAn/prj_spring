package com.mycompany.app.infra.dodomall;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DodomallController {

    @Autowired
    DodomallServiceImpl service;

    @RequestMapping("/adminDodomallList")

    public String adminDodomallList(DodomallVo vo) {

        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            service.selectList(vo);
        } else {
            //			by pass
        }

        return "admin/infra/dodomall/adminDodomallList";
}

    public String adminDodomallForm(DodomallVo vo) {

        service.selectOne(vo);

        return "admin/infra/dodomall/adminDodomallForm";
    }

    public String adminDodomallUpdt(Dodomall dto) {

        service.update(dto);

        return "redirect:/adminDodomallList";
    }

    public String adminDodomallDelete(Dodomall dto) {

        service.delete(dto);

        return "redirect:/adminDodomallList";
    }

    public String adminDodomallInsert(Dodomall dto) {

        service.insert(dto);

        return "redirect:/adminDodomallList";
    }

    public String adminDodomallUelete(Dodomall dto) {

        service.uelete(dto);

        return "redirect:/adminDodomallList";
    }
}
