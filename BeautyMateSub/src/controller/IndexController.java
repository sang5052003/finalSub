package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	// 모든url이 왔을때 '/'-> dispatcher url-pattern
	@RequestMapping("/")
	public String main() {
		return "redirect:/cosmetic/test.do";
	}
}
