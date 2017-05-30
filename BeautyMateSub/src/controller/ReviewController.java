package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Customer;
import domain.PageMaker;
import domain.Review;
import domain.SearchPager;

@Controller
@RequestMapping("review")
public class ReviewController {

	@RequestMapping(value = "listpage.do", method = RequestMethod.GET)
	public String showReviewPage(@ModelAttribute("pager") SearchPager pager, Model model)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/listpage";

		List<Review> list = jsonByList(url);

		// for (Review r : list) {
		// System.out.println(r.toString());
		// }

		PageMaker pageMaker = new PageMaker();
		pageMaker.setPager(pager);
//		pageMaker.setTotalCount(list.get(0).getListCount()); // 전체 개수를 가지고 온다.

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("reviewList", list);

		return "/review/list.jsp";

	}
	// @RequestMapping(value ="/readPage.do", method = RequestMethod.GET)
	// public String read()

	// 리뷰 리스트
	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public String showReviewList(Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/list";

		List<Review> list = jsonByList(url);

		for (Review r : list) {
			System.out.println(r.toString());
		}
		model.addAttribute("reviewList", list);

		return "/review/list.jsp";

	}

	// 리뷰 이름검색
	@RequestMapping(value = "titleSearch.do", method = RequestMethod.GET)
	public String showReviewTitle(String reviewTitle, Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/reviewTitle" + reviewTitle;

		List<Review> list = jsonByList(url);

		for (Review r : list) {
			System.out.println(r.toString());
		}
		model.addAttribute("reviewList", list);

		return "/review/list.jsp";

	}

	// 리뷰 내용검색
	@RequestMapping(value = "contentSearch.do", method = RequestMethod.GET)
	public String showReviewContent(String reviewContent, Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/reviewContent" + reviewContent;

		List<Review> list = jsonByList(url);

		for (Review r : list) {
			System.out.println(r.toString());
		}
		model.addAttribute("reviewList", list);

		return "/review/list.jsp";

	}

	// 리뷰 카테고리 검색
	@RequestMapping(value = "categorySearch.do", method = RequestMethod.GET)
	public String showReviewcategory(String category, Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/reviewCategory" + category;

		List<Review> list = jsonByList(url);

		for (Review r : list) {
			System.out.println(r.toString());
		}
		model.addAttribute("reviewList", list);

		return "/review/list.jsp";

	}

	// 리뷰 등록
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public String reviewRegist(HttpSession session) {

		if (session.getAttribute("loginCustomer") == null) {
			// 로그인 페이지로
		}

		return "/review/register.jsp";
	}

	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String reviewRegist(Review review, HttpSession session,RedirectAttributes rttr) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/register";
		int result = 0;
		// Customer customer = (Customer)session.getAttribute("loginCustomer");
		// review.setCustomer(customer);
		result = jsonByObject(url, review);

		if (result == 1) { // 성공
			System.out.println(result);
		}
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:/review/listpage.do"; // 리뷰 목록
	}

	// 리뷰 수정
	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String reviewModify(int reviewNo, @ModelAttribute("pager") SearchPager pager, Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/reviewNo" + reviewNo;
		
		Review review = jsonObject(url);
		
		model.addAttribute("review",review);


		return "/review/modifyPage.jsp";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String reviewModify(Review review, SearchPager pager, RedirectAttributes rttr) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/modify";
		int result = 0;
		result = jsonByObject(url, review);

		if (result == 1) { // 성공
			System.out.println(result);
		}
		
		rttr.addAttribute("page", pager.getPage());
	    rttr.addAttribute("perPageNum", pager.getPerPageNum());
	    rttr.addAttribute("searchType", pager.getSearchType());
	    rttr.addAttribute("keyword", pager.getKeyword());

	    rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/review/listpage.do"; // 리뷰 상세
	}

	// 리뷰 삭제
	@RequestMapping(value = "remove.do", method = RequestMethod.POST)
	public String reviewRemove(@RequestParam("reviewNo") int reviewNo, SearchPager pager, RedirectAttributes rttr)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/remove/reviewNo/" + reviewNo;
		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<Integer> typeToken = new TypeToken<Integer>() {
		};

		Type type = typeToken.getType();

		int result = new Gson().fromJson(responseContent, type);

		if (result == 1) {// 성공
			System.out.println(result);
		}

		rttr.addAttribute("page", pager.getPage());
		rttr.addAttribute("perPageNum", pager.getPerPageNum());
		rttr.addAttribute("searchType", pager.getSearchType());
		rttr.addAttribute("keyword", pager.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		// 성공 삭제 유무

		return "redirect:/review/listpage.do";
	}

	// 리뷰 디테일
	@RequestMapping(value = "detail.do", method = RequestMethod.GET)
	public String reviewDetail(@RequestParam("reviewNo") int reviewNo, @ModelAttribute("pager") SearchPager pager,
			Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/reviewNo/" + reviewNo;

		Review r = jsonObject(url);

		model.addAttribute("review", r);

		return "/review/Detail.jsp";
	}

	private Review jsonObject(String url) throws ClientProtocolException, IOException {
		
		HttpGet httpGet = new HttpGet(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseCountent = HttpResponse.getInstance().getResponseContent(response);

		// json to object 하나만 올라옴
		TypeToken<Review> typeToken = new TypeToken<Review>() {
		}; // 생성자없어서 {}
		Type type = typeToken.getType(); // java.lang.reflect

		Review review = new Gson().fromJson(responseCountent, type);

		response.close();

		return review;

	}

	private List<Review> jsonByList(String url) throws ClientProtocolException, IOException {

		HttpGet httpGet = new HttpGet(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<List<Review>> typeToken = new TypeToken<List<Review>>() {
		};
		Type type = typeToken.getType();
		List<Review> reviews = new Gson().fromJson(responseContent, type);

		response.close();

		return reviews;

	}

	private int jsonByObject(String url, Review review) throws ClientProtocolException, IOException {

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(review));
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<Integer> typeToken = new TypeToken<Integer>() {
		};

		Type type = typeToken.getType();
		int result = new Gson().fromJson(responseContent, type);

		response.close();

		return result;

	}

}
