package kr.co.tripChoice.Trq;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.utility.Utility;

@Controller
public class TrqCont {

	@Autowired
	private TrqDAO dao;
	
	public TrqCont() {
		System.out.println("--------TrqCont() 객체가 생성 되었습니다.");
	}//TripCont() end
	
	// 결과확인
    // http:///localhost:9090/trqList.do
	
   /* //고처야 하는지 체크V
    
	@RequestMapping("/trq/trqlist.do")
	public ModelAndView trqlist(int trip_no) { 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("trq/trqlist");
		mav.addObject("root", Utility.getRoot());
		
		return mav;
	}//trqlist() end
	
	
	@RequestMapping(value="/trq/trqForm.do", method=RequestMethod.GET)
	public ModelAndView trqForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("trq/trqForm");
		mav.addObject("root", Utility.getRoot());
		
		return mav;
	}//tripForm()end
	
	
	@RequestMapping(value="/trq/create.do", method=RequestMethod.POST)
	public void createProc(@ModelAttribute TrqDTO dto 
									,HttpServletRequest req
									,HttpServletResponse resp
									,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("trq/msgView");
		mav.addObject("root", Utility.getRoot() ); 
	
		int cnt=dao.create(dto);
		if(cnt==0) {
			mav.addObject("msg1", "<p>여행상품 등록 실패! </p>");
			mav.addObject("img", "<img src='../images/crying.png'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back()'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do?tbrq_no=" +dto.getTrq_no() + "\"'>");
		}else {
			mav.addObject("msg1"  , "<p>음원 등록 성공! </p>");
			mav.addObject("img"   , "<img src='../images/heart.png'>");
			mav.addObject("link1" , "<input type='button' value='목록'  onclick='location.href=\"./list.do?trip_no=" +dto.getTrq_no() + "\"'>");
		}//if end 
	}//createProc end
	*/
	
		
		
			@RequestMapping(value="trqDel.do", method =RequestMethod.GET)
			public String trqDel() {
				return "trq/trqDel";
			}
			@RequestMapping(value="trqDelproc.do", method =RequestMethod.POST)
		    public ModelAndView trqDelproc(TrqDTO dto) {
		        ModelAndView mav = new ModelAndView ();
		        mav.setViewName ( "trq/trqDelproc");
		        return mav;
			}
			@RequestMapping(value="trqForm.do", method =RequestMethod.GET)
			public String trqForm() {
				return "trq/trqForm";
			}
			@RequestMapping(value="trqIns.do", method =RequestMethod.GET)
			public String trqIns() {
				return "trq/trqIns";
			}
			
			@RequestMapping(value="trqList.do", method =RequestMethod.GET)
			public String trqList() {
				return "trq/trqList";
			}
			
			@RequestMapping(value="trqRead.do", method =RequestMethod.GET)
			public String trqRead() {
				return "trq/trqRead";
			}
			
	
			@RequestMapping(value="trqUpdate.do", method =RequestMethod.GET)
			public String trqUpdate() {
				return "trq/trqUpdate";
			}
			@RequestMapping(value="trqUpdateproc.do", method =RequestMethod.POST)
		    public ModelAndView trqUpdateproc(TrqDTO dto) {
		        ModelAndView mav = new ModelAndView ();
		        mav.setViewName ( "trq/trqUpdateproc");
		        return mav;
			}
			
		

	
}//class end
