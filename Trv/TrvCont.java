package kr.co.tripChoice.Trv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TrvCont {

	@Autowired
	private TrvDAO dao;
	
	public TrvCont() {
		System.out.println("--------TrvCont() 객체가 생성 되었습니다.");
	}//TripCont() end
	

	@RequestMapping(value="trvDel.do", method =RequestMethod.GET)
	public String trvDel() {
		return "trv/trqDel";
	}
	@RequestMapping(value="trvDelproc.do", method =RequestMethod.POST)
    public ModelAndView trvDelproc(TrvDTO dto) {
        ModelAndView mav = new ModelAndView ();
        mav.setViewName ( "trv/trqDelproc");
        return mav;
	}
	//리뷰 폼 호출
	// http://localhost:9090/tripChoice/trvForm.do
	 @RequestMapping("/trvForm.do")
	 public ModelAndView Form() {
		 ModelAndView Form = new ModelAndView();
		 Form.setViewName("trv/trvForm");
		 return Form;
	 }//Form end
	 
	@RequestMapping(value="trvIns.do", method =RequestMethod.GET)
	public String trvIns() {
		return "trv/trvIns";
	}
	@RequestMapping(value="trvIns.do", method =RequestMethod.POST)
	    public ModelAndView trvIns(TrvDTO dto) {
	        ModelAndView mav = new ModelAndView ();
	        mav.setViewName ( "trv/trvIns");
	        return mav;
		}
	//리뷰 리스트 호출
	// http://localhost:9090/tripChoice/trvList.do
	 @RequestMapping("/trvList.do")
	 public ModelAndView list() {
		 ModelAndView list = new ModelAndView();
		 list.setViewName("trv/trvList");
		 return list;
	 }//list end
	
	@RequestMapping(value="trvRead.do", method =RequestMethod.GET)
	public String trvRead() {
		return "trv/trvRead";
	}
	

	@RequestMapping(value="trvUpdate.do", method =RequestMethod.GET)
	public String trvUpdate() {
		return "trv/trvUpdate";
	}
	@RequestMapping(value="trvUpdateproc.do", method =RequestMethod.POST)
    public ModelAndView trqUpdateproc(TrvDTO dto) {
        ModelAndView mav = new ModelAndView ();
        mav.setViewName ( "trv/trvUpdateproc");
        return mav;
	}
	
	
}//class end
