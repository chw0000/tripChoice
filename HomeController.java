package kr.co.tripChoice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.tripChoice.Trq.TrqDTO;
import net.utility.DBClose;

/*
tripChoice프로젝트의 첫페이지 호출
http://localhost:9090/tripChoice/index.do
*/ 
@Controller
public class HomeController {
	
	public HomeController() {
		System.out.println("--------HomeController()객체 생성되었습니다.");
	}


	@RequestMapping("index.do")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/index");
		return mav;
	}//home() end
	
	@RequestMapping(value="mailForm.do", method =RequestMethod.GET)
	public String mailForm() {
		return "mail/mailForm";
	}
	@RequestMapping(value="mailProc.do", method =RequestMethod.POST)
    public ModelAndView mailProc() {
        ModelAndView mav = new ModelAndView ();
        mav.setViewName ( "mail/mailProc");
        return mav;
	}
	
	
	
	
	
}//class end
