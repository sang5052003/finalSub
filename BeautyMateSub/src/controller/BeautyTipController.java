package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import domain.Cosmetic;

@Controller
@RequestMapping("beautyTip")
public class BeautyTipController {

	// 화장품 등록
	@RequestMapping(value = "registForm.do", method = RequestMethod.GET)
	public String cosmeticShowRegisterForm(Cosmetic cosmetic) {

		return "/BeautyTip/registForm.jsp";
	}
}
