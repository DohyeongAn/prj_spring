package com.mycompany.app.infra.member;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MemberController {

    @Autowired
    MemberServiceImpl service;

    @RequestMapping("/adminMemberList")

    public String adminMemberList(@ModelAttribute("vo") MemberVo vo, Model model) {

        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            List<Member> list = service.selectList(vo);
            model.addAttribute("list", list);
        } else {
//			by pass
        }


        return "admin/infra/member/adminMemberList";
    }


    @RequestMapping("/adminMemberForm")
    public String adminMemberForm(MemberVo vo, Model model) {

        Member Member = service.selectOne(vo);

        model.addAttribute("item", Member);

        return "admin/infra/member/adminMemberForm";
    }
//    @RequestMapping("/MemberUpdt")
//    public String MemberUpdt() {
//        System.out.println("MemberUpdt");
//
//        return "adminMemberForm";
//    }

    @RequestMapping("/adminMemberUpdt")
    public String adminMemberUpdt(Member dto) {
        System.out.println("adminMemberUpdt");

        service.update(dto);

        return "redirect:/adminMemberList";
    }

    @RequestMapping("/adminMemberDel")
    public String adminMemberDelete(Member dto) {
        System.out.println("adminMemberDel");

        service.delete(dto);

        return "redirect:/adminMemberList";
    }
    @RequestMapping("/adminMemberIns")
    public String adminMemberIns(Member dto) {
        System.out.println("adminMemberIns");

        service.insert(dto);

        return "redirect:/login";
    }

    @RequestMapping("/adminMemberUelete")
    public String adminMemberUelete(Member dto) {
        service.uelete(dto);
        return "redirect:/adminMemberList";
    }



    @ResponseBody
    @RequestMapping("/checkIdProc")
    public Map<String, Object> checkIdProc(MemberVo vo) {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        int rtNum = service.selectOneCheckId(vo);

        if(rtNum == 0) {
            returnMap.put("rt", "available");
        } else {
            returnMap.put("rt", "unavailable");
        }
        return returnMap;
    }

    @ResponseBody
    @RequestMapping("/selectOneLogin")
    public Map<String, Object> selectOneLogin(MemberVo vo, HttpSession httpSession) {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        Member rtMember = service.selectOneLogin(vo);

        if(rtMember != null) {
            // 로그인 성공 시 세션에 사용자 정보 저장
            httpSession.setMaxInactiveInterval(60*60); //60min
            httpSession.setAttribute("id", vo.getId());

            returnMap.put("rtMember", rtMember);
            returnMap.put("rt", "success");
        } else {
            returnMap.put("rt", "fail");
        }
        return returnMap;
    }

    @ResponseBody
    @RequestMapping("/logoutProc")
    public Map<String, Object> logoutUsrFrom(HttpSession httpSession){
        Map<String,Object> returnMap = new HashMap<String, Object>();
        //
        httpSession.invalidate();
        returnMap.put("rt", "success");
        return returnMap;
    }


}
