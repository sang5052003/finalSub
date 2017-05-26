package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("survey")
public class SurveyController {

	//설문지 등록
	@RequestMapping(value = "skinTypeRegistForm.do", method = RequestMethod.GET)
	public String surveySkinTypeRegistForm(HttpSession session){
		
		
		return "/survey/skinTypeRegistForm.jsp";
	}
	
	@RequestMapping(value = "skinTypeRegist.do", method = RequestMethod.POST)
	public String surveySkinTypeRegist(HttpServletRequest req, Model model){
		
		return "/survey/skinTypeResult.jsp";
	}

	//설문지 평점 등록
	@RequestMapping(value = "gradeRegistForm.do", method = RequestMethod.GET)
	public String surveyGradeRegistForm(HttpSession session){
		
		return "/survey/gradeRegistForm.jsp";
	}
	
	@RequestMapping(value = "gradeRegist.do", method = RequestMethod.POST)
	public String surveyGradeRegist(HttpServletRequest req, Model model){
		
		return "/survey/recommendResult.jsp";
	}
	
	//설문지 삭제
	@RequestMapping(value = "clear.do", method = RequestMethod.GET)
	public String surveyClear(int surveyResultNo){
		
		//찾아올 설문지 번호
		int surveyNo = 0;
		
		return "redirect:survey/survey.do?surveyNo=" + surveyNo;
	}
	
	//픽미템 탭 누르면 나오는 페이지(설문을 했다면 skinTypeResult페이지가 나올것이다)
	@RequestMapping(value = "survey.do", method = RequestMethod.GET)
	public String survey(int surveyNo, Model model){
		
		return "/survey/survey.jsp";
	}
}
