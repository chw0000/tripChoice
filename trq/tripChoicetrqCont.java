package kr.co.tripChoice.trq;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.tripChoice.tuser.TuserDTO;


@Controller
public class tripChoicetrqCont {

		@Autowired
		private tripChoicetrqDAO dao;
		
		public tripChoicetrqCont() {
			System.out.println("-----tripChoicetrqCont()객체 생성됨");
		}//MediaCont() end
		
		//페이지 호출
		@RequestMapping(value="noticeList.do", method =RequestMethod.GET)
		public String noticeList() {
			return "trq/noticeList";
		}
		
		//public String 
		@RequestMapping(value="noticForm.do", method =RequestMethod.GET)
		public String noticForm() {
			return "trq/noticForm";
		}
		
		
		@RequestMapping(value="noticeDel.do", method =RequestMethod.GET)
		public String noticeDel() {
			return "trq/noticeDel";
		}
		@RequestMapping(value="noticeDelproc.do", method =RequestMethod.POST)
	    public ModelAndView noticeDelproc(tripChoicetrqDTO dto) {
	        ModelAndView mav = new ModelAndView ();
	        mav.setViewName ( "trq/noticeDelproc");
	        return mav;
		}
		@RequestMapping(value="noticeIns.do", method =RequestMethod.GET)
		public String noticeIns() {
			return "trq/noticeIns";
		}
		
		@RequestMapping(value="noticeRead.do", method =RequestMethod.GET)
		public String noticeRead() {
			return "trq/noticeRead";
		}
		
		@RequestMapping(value="noticeReply.do", method =RequestMethod.GET)
		public String noticeReply() {
			return "trq/noticeReply";
		}
		@RequestMapping(value="noticeReplyproc.do", method =RequestMethod.POST)
	    public ModelAndView noticeReplyproc(tripChoicetrqDTO dto) {
	        ModelAndView mav = new ModelAndView ();
	        mav.setViewName ( "trq/noticeReplyproc");
	        return mav;
		}
		
		@RequestMapping(value="noticeUpdate.do", method =RequestMethod.GET)
		public String noticeUpdate() {
			return "trq/noticeUpdate";
		}
		@RequestMapping(value="noticeUpdateproc.do", method =RequestMethod.POST)
	    public ModelAndView noticeUpdateproc(tripChoicetrqDTO dto) {
	        ModelAndView mav = new ModelAndView ();
	        mav.setViewName ( "trq/noticeUpdateproc");
	        return mav;
		}
		
	
		
		
		
				
}//class end
