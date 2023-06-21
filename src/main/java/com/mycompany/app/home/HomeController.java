package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

	@GetMapping(value = "/")
	public String index() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		
		
		// 아래의 jsp 파일 호출
		return "index";
	}
	
	
}
