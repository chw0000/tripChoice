package kr.co.tripChoice.Trq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TrqCont {

	@Autowired
	private TrqDAO dao;
	
	public TrqCont() {
		System.out.println("--------TrqCont() 객체가 생성 되었습니다.");
	}//TripCont() end
			
	
	
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
			//문의사항 폼 호출
			// http://localhost:9090/tripChoice/trqForm.do
			 @RequestMapping("/trqForm.do")
			 public ModelAndView Form() {
				 ModelAndView Form = new ModelAndView();
				 Form.setViewName("trq/trqForm");
				 return Form;
			 }//Form end
			 
			 @RequestMapping(value="trqIns.do", method =RequestMethod.GET)
				public String trqIns() {
					return "trq/trqIns";
				}
			 
			 @RequestMapping(value="trqIns.do", method =RequestMethod.POST)
			    public ModelAndView trqIns(TrqDTO dto) {
			        ModelAndView mav = new ModelAndView ();
			        mav.setViewName ( "trq/trqIns");
			        return mav;
				}
			
			//문의사항 리스트 호출
			// http://localhost:9090/tripChoice/trqList.do
			 @RequestMapping("/trqList.do")
			 public ModelAndView list() {
				 ModelAndView list = new ModelAndView();
				 list.setViewName("trq/trqList");
				 return list;
			 }//list end
			
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
