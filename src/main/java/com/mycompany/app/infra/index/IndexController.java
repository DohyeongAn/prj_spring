package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/biographyUsrView")
    public String biographyUsrView() {
        return "user/infra/biography/biographyUserView";
    }
   @RequestMapping("/about")
    public String about() {
        return "user/infra/biography/about";
    }

    @RequestMapping("/indexUesrView")
    public String indexUsrView() {
        return "user/infra/index/indexUserView";
    }



    @RequestMapping(value = "/")
    public String index() {
        // 여기에서 서버단에 필요한 작업을 수행한다.

        // 아래의 jsp 파일 호출
        return "user/infra/biography/biographyUserView";
    }

    @RequestMapping(value = "/login")
    public String login() {
        // 여기에서 서버단에 필요한 작업을 수행한다.

        // 아래의 jsp 파일 호출
        return "user/infra/index/login";
    }

    @RequestMapping(value = "/join")
    public String join(){

        return "user/infra/index/join";
    }

    @RequestMapping(value = "/adminLogin")
    public String adminLogin(){

        return "admin/infra/codegroup/adminLogin";
    }





}
