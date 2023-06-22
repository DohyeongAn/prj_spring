package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String index() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		
		
		// 아래의 jsp 파일 호출
		return "index";
	}

@RequestMapping(value = "test")
	public String test(){

		return "app/portfolio/test";
	}





	@RequestMapping(value = "home3")
	public ModelAndView home3(){
		ModelAndView mav = new ModelAndView();

		mav.setViewName("home3");

		return mav;
	}

	@RequestMapping(value = "home4")
	public ModelAndView home4(){
		ModelAndView mav = new ModelAndView();

		mav.setViewName("home4");

		return mav;
	}

	@RequestMapping(value = "home5")
	public ModelAndView home5(){
		ModelAndView mav = new ModelAndView();

		mav.setViewName("home5");

		return mav;
	}

	@RequestMapping(value = "home6")
	public ModelAndView home6(){
		ModelAndView mav = new ModelAndView();

		mav.setViewName("home6");

		return mav;
	}
	@RequestMapping(value = "home7")
	public ModelAndView home7(){
		ModelAndView mav = new ModelAndView();

		mav.setViewName("home7");

		return mav;
	}









}
