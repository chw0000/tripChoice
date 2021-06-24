package kr.co.tripChoice.Trv;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.tripChoice.Trq.TrqDTO;
import net.utility.Utility;

@Controller
public class TrvCont {

	@Autowired
	private TrvDAO dao;
	
	public TrvCont() {
		System.out.println("--------TrvCont() 객체가 생성 되었습니다.");
	}//TripCont() end
	
	// 결과확인
    // http:///localhost:9090/trvList.do
	
   
	/*
	@RequestMapping("/trv/trvlist.do")
	public ModelAndView trvlist(int trv_no) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("trv/trvlist");
		mav.addObject("root", Utility.getRoot());
		
		return mav;
	}//trvlist() end
	
	
	@RequestMapping(value="/trv/trvForm.do", method=RequestMethod.GET)
	public ModelAndView trvForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("trv/trvForm");
		mav.addObject("root", Utility.getRoot());
		
		return mav;
	}//tripForm()end
	

	@RequestMapping(value="/trv/create.do", method=RequestMethod.POST)
	public void createProc(@ModelAttribute TrvDTO dto 
									,HttpServletRequest req
									,HttpServletResponse resp
									,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("trv/msgView");
		mav.addObject("root", Utility.getRoot() ); 
	
		int cnt=dao.create(dto);
		if(cnt==0) {
			mav.addObject("msg1", "<p>여행상품 등록 실패! </p>");
			mav.addObject("img", "<img src='../images/crying.png'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back()'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do?tbrq_no=" +dto.getTrv_no() + "\"'>");
		}else {
			mav.addObject("msg1"  , "<p>음원 등록 성공! </p>");
			mav.addObject("img"   , "<img src='../images/heart.png'>");
			mav.addObject("link1" , "<input type='button' value='목록'  onclick='location.href=\"./list.do?trip_no=" +dto.getTrv_no() + "\"'>");
		}//if end 
	}// createProc() end 
	*/
	

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
	@RequestMapping(value="trvForm.do", method =RequestMethod.GET)
	public String trvForm() {
		return "trv/trvForm";
	}
	@RequestMapping(value="trvIns.do", method =RequestMethod.GET)
	public String trvIns() {
		return "trv/trvIns";
	}
	
	@RequestMapping(value="trvList.do", method =RequestMethod.GET)
	public String trvList() {
		return "trv/trvList";
	}
	
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
