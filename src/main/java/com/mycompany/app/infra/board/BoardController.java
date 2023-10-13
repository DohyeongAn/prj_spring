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

    // 1. 게시판 목록을 보여주는 페이지에 접근하는 요청을 처리하는 핸들러 메서드입니다.
    @GetMapping("/boardList")
    public String getBoardList(@ModelAttribute("vo") BoardVo vo, Model model) {
        // 뷰의 이름을 반환합니다. 여기서는 "user/infra/index/list"로 설정되어 있습니다.
        return "user/infra/index/list";
    }

    // 2. 게시판 데이터를 가져오는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping(value = "/boardListData")
    public List<BoardVo> getBoardListData(@ModelAttribute("vo") BoardVo vo, Model model) {
        // 페이징 처리를 위한 조건이 설정되어 있는 경우
        if (vo.getTotalRows() > 0) {
            // 게시글 목록을 가져옵니다.
            List<BoardVo> list = service.selectList(vo);
            // 뷰에 전달하기 위해 모델에 데이터를 추가합니다.
            model.addAttribute("list", list);
        } else {
            // 페이징 조건이 설정되어 있지 않은 경우 by pass (건너뜀)
        }
        // 게시글 목록을 반환합니다.
        return service.selectList(vo);
    }

    // 3. 게시글 작성 페이지에 접근하는 요청을 처리하는 핸들러 메서드입니다.
    @GetMapping("boardList/boardWrite")
    public String board_insert() {
        // 뷰의 이름을 반환합니다. 여기서는 "user/infra/index/boardWrite"로 설정되어 있습니다.
        return "user/infra/index/boardWrite";
    }

    // 4. 게시글을 작성하는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping("boardList/boardWrite/boardIns")
    public String board_insert(BoardVo dto) {
        // 게시글을 데이터베이스에 저장합니다.
        service.insert(dto);
        // 게시판 목록 페이지로 리다이렉트합니다.
        return "redirect:/boardList";
    }
    @RequestMapping("boardList/boardView")
    public String boardView() {
        return "user/infra/index/boardView";
    }

    // 5. 게시글 내용을 보여주는 페이지에 접근하는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping("/boardViewData")
    public BoardVo boardViewData(BoardVo vo, Model model) {
        // 게시글 번호를 이용하여 게시글 데이터를 가져옵니다.
        BoardVo board = service.selectOne(vo);
        // 뷰에 전달하기 위해 모델에 데이터를 추가합니다.
        model.addAttribute("board", board);
        // 뷰의 이름을 반환합니다. 여기서는 "user/infra/index/boardView"로 설정되어 있습니다.
        return service.selectOne(vo);
    }









}
