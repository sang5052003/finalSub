package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import domain.BeautyTipCategory;
import domain.Customer;
import domain.Reply;

@Controller
public class IndexController {

	// 모든url이 왔을때 '/'-> dispatcher url-pattern
	@RequestMapping("/")
	public String main() {
		//return "redirect:/beautyTip/showDetail.do?beautyTipNo=2";
		//return "redirect:/cosmetic/test.do";
		//return "redirect:/beautyTip/registForm.do";
		//return "beautyTip/regist.do";
		return "redirect:/beautyTip/list.do?category=" + BeautyTipCategory.makeupInformation;
		//return "redirect:/beautyTip/editForm.do?beautyTipNo=4";
		//return "redirect:/beautyTip/clear.do?beautyTipNo=7";
		//return "redirect:/beautyTip/showByAuthor.do?authorId=id&category=" + BeautyTipCategory.makeupInformation;
		//return "redirect:/beautyTip/showByTitle.do?title=edit&category=" + BeautyTipCategory.makeupInformation;
		
		
		//return "reply/beautyTip/editForm.do";
		//return "redirect:/reply/beautyTip/clear.do?replyNo=12&postNo=2";
	}
}
