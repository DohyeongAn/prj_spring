package com.mycompany.app.infra.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    BoardServiceImpl service;

    @GetMapping("/boardList")
    public String getBoardList(@ModelAttribute("vo") BoardVo vo, Model model) {
        return "user/infra/index/list";
    }

    @ResponseBody
    @RequestMapping(value = "/boardListData")
    public List<Board> getBoardListData(@ModelAttribute("vo") BoardVo vo, Model model) {
        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            List<Board> list = service.selectList(vo);
            model.addAttribute("list", list);
            System.out.println("List in controller: " + list);

        } else {
            // by pass
        }
        return service.selectList(vo);
    }
    @GetMapping("boardList/boardWrite")
    public String board_insert()
    {
        return "user/infra/index/boardWrite";
    }

    @ResponseBody
    @RequestMapping("bordList/boardWrite/boardIns")
    public String board_insert(Board dto) {

        service.insert(dto);

        return "redirect:/boardList";
    }
}
