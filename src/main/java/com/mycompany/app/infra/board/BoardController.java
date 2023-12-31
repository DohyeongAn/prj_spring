package com.mycompany.app.infra.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {

    @Autowired
    BoardServiceImpl service;

    // 1. 게시판 목록을 보여주는 페이지에 접근하는 요청을 처리하는 핸들러 메서드입니다.
    @RequestMapping("/boardList")
    public String getBoardList(@ModelAttribute("vo") BoardVo vo, Model model) {
        return "user/infra/index/list";
    }

    // 2. 게시판 데이터를 가져오는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping(value = "/boardListData")
    public Map<String, Object> getBoardListData(@ModelAttribute("vo") BoardVo vo, Model model) {
        Map<String, Object> result = new HashMap<String, Object>();
        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        vo.setShOption(vo.getShOption() == null ? 0 : vo.getShOption()); // 추가된 부분

        vo.setParamsPaging(service.selectOneCount(vo));
        if (vo.getTotalRows() > 0) {
            // 게시글 목록을 가져옵니다.
            List<BoardVo> list = service.selectList(vo);
            // 페이징 처리를 위한 파라미터를 계산합니다.'
            // 뷰에 전달하기 위해 모델에 데이터를 추가합니다.
            model.addAttribute("list", list);
            result.put("list", list);
        } else {
            // 페이징 조건이 설정되어 있지 않은 경우 by pass (건너뜀)
        }

        result.put("shKeyword", vo.getShKeyword());
        result.put("totalRows", vo.getTotalRows());
        result.put("thisPage", vo.getThisPage());
        result.put("pageNumToShow", vo.getPageNumToShow());
        result.put("rowNumToShow", vo.getRowNumToShow());
        result.put("totalPages", vo.getTotalPages());
        result.put("startPage", vo.getStartPage());
        result.put("endPage", vo.getEndPage());
        result.put("shOption", vo.getShOption());

        return result;
    }


    // 3. 게시글 작성 페이지에 접근하는 요청을 처리하는 핸들러 메서드입니다.
    @GetMapping("boardList/boardWrite")
    public String board_insert(HttpSession session, Model model) {
        String writer = (String) session.getAttribute("id"); // 세션에서 id 값을 읽어옵니다.
        model.addAttribute("writer", writer); // writer를 모델에 추가하여 뷰에 전달합니다.
        // 뷰의 이름을 반환합니다. 여기서는 "user/infra/index/boardWrite"로 설정되어 있습니다.
        return "user/infra/index/boardWrite";
    }

    // 4. 게시글을 작성하는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping("boardList/boardWrite/boardIns")
    public String board_insert(BoardVo vo) {
        // 게시글을 데이터베이스에 저장합니다.
        service.insert(vo);
        // 게시판 목록 페이지로 리다이렉트합니다.
        return "redirect:/boardList";
    }
    @RequestMapping("boardList/boardView")
    public String boardView(HttpSession session, Model model) {
        String writer = (String) session.getAttribute("id"); // 세션에서 id 값을 읽어옵니다.
        model.addAttribute("writer", writer); // writer를 모델에 추가하여 뷰에 전달합니다.
        return "user/infra/index/boardView";
    }

    // 5. 게시글 내용을 보여주는 페이지에 접근하는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping("/boardViewData")
    public BoardVo boardViewData(BoardVo vo , Model model) {
        // 게시글 번호를 이용하여 게시글 데이터를 가져옵니다.
        BoardVo board = service.selectOne(vo);
        // 게시글 조회수를 증가시킵니다.
        service.viewCnt(vo);
        // 뷰에 전달하기 위해 모델에 데이터를 추가합니다.
        model.addAttribute("board", board);
        // 뷰의 이름을 반환합니다. 여기서는 "user/infra/index/boardView"로 설정되어 있습니다.
        return service.selectOne(vo);
    }

    // 6. 게시글을 수정하는 요청을 처리하는 핸들러 메서드입니다.
    @RequestMapping("boardList/boardView/boardUpdate")
    public String board_update(HttpSession session, Model model) {
        String writer = (String) session.getAttribute("id"); // 세션에서 id 값을 읽어옵니다.
        model.addAttribute("writer", writer); // writer를 모델에 추가하여 뷰에 전달합니다.
        return "/user/infra/index/boardUpdate";
    }

    // 7. 게시글을 수정하는 요청을 처리하는 핸들러 메서드입니다.
    @ResponseBody
    @RequestMapping("boardList/boardView/boardUpdate/boardUpd")
    public String board_update(HttpSession session, Model model, BoardVo vo) {
        String writer = (String) session.getAttribute("id"); // 세션에서 id 값을 읽어옵니다.
        model.addAttribute("writer", writer); // writer를 모델에 추가하여 뷰에 전달합니다.

        // 세션의 id 값과 게시글의 작성자가 일치하는지 확인합니다.
//        if (!writer.equals(vo.getWriter())) {
//            // 일치하지 않는 경우 알람을 띄우고 게시판목록으로 리다이렉트
//            System.out.println("잘못된 접근: 작성자가 일치하지 않습니다.");
//            return "redirect:/boardList";
//        }else {
//
//
            // 게시글을 데이터베이스에 저장합니다.
            service.update(vo);
            // 게시판 목록 페이지로 리다이렉트합니다.
            return "redirect:/boardList";


//        }
    }

    // 8. 게시글을 삭제하는 요청을 처리하는 핸들러 메서드입니다.
    @RequestMapping("boardList/boardView/boardDelete")
    public String board_delete(HttpSession session, Model model, BoardVo vo) {
        String writer = (String) session.getAttribute("id"); // 세션에서 id 값을 읽어옵니다.
        model.addAttribute("writer", writer); // writer를 모델에 추가하여 뷰에 전달합니다.

        // 세션의 id 값과 게시글의 작성자가 일치하는지 확인합니다.
//        if (!writer.equals(vo.getWriter())) {
//            // 일치하지 않는 경우 알람을 띄우고 게시판목록으로 리다이렉트
//            System.out.println("잘못된 접근: 작성자가 일치하지 않습니다.");
//            return "redirect:/boardList";
//        }else
//        {


            // 게시글을 데이터베이스에서 삭제합니다.
            service.delete(vo);
            // 게시판 목록 페이지로 리다이렉트합니다.
            return "redirect:/boardList";

//        }
    }










}
