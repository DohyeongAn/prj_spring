package com.mycompany.app.infra.codegroup;

import com.mycompany.app.infra.common.base.BaseController;
import com.mycompany.app.infra.member.Member;
import com.mycompany.app.infra.member.MemberVo;
import com.mycompany.app.infra.member.MemberServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CodeGroupController {

    @Autowired
    CodeGroupServiceImpl service;

    @RequestMapping("/adminList")

    public String adminList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {

        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            List<CodeGroup> list = service.selectList(vo);
            model.addAttribute("list", list);
        } else {
//			by pass
        }


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

    @RestController
    @RequestMapping("/rest/member")
    public class MemberRestController extends BaseController {

        @Autowired
        MemberServiceImpl service;

        @RequestMapping(value = "", method = RequestMethod.GET)
//	@GetMapping("")
        public List<Member> selectList(MemberVo vo) throws Exception {
            List<Member> list = service.selectList(vo);
            return list;
        }


        @RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//	@GetMapping("/{seq}")
        public Member selectOne(@PathVariable String seq, MemberVo vo) throws Exception {
            vo.setSeq(seq);
            Member item = service.selectOne(vo);
            return item;
        }


        @RequestMapping(value = "", method = RequestMethod.POST)
//	@PostMapping("")
        public String insert(@RequestBody Member dto) throws Exception {
            service.insert(dto);
            return dto.getSeq();
        }


        @RequestMapping(value = "/{seq}", method = RequestMethod.PUT)
//	@PatchMapping("/{seq}")
//	@PutMapping("/{seq}")
        public void update(@PathVariable String seq, @RequestBody Member dto) throws Exception {
            dto.setSeq(seq);
            service.update(dto);
        }

    }
}

