package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import domain.BeautyTipCategory;

@Controller
public class IndexController {

	// 모든url이 왔을때 '/'-> dispatcher url-pattern
	@RequestMapping("/")
	public String main() {
		//return "redirect:/beautyTip/showDetail.do?beautyTipNo=2";
		//return "redirect:/cosmetic/test.do";
		//return "redirect:/beautyTip/registForm.do";
		//return "beautyTip/regist.do";
		//return "redirect:/beautyTip/list.do?category=" + BeautyTipCategory.makeupInformation;
		//return "redirect:/beautyTip/editForm.do?beautyTipNo=4";
		//return "redirect:/beautyTip/clear.do?beautyTipNo=7";
		//return "redirect:/beautyTip/showByAuthor.do?authorId=id&category=" + BeautyTipCategory.makeupInformation;
		return "redirect:/beautyTip/showByTitle.do?title=edit&category=" + BeautyTipCategory.makeupInformation;
	}
}
