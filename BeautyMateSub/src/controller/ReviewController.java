package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.http.Consts;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.DateDeserializer;
import controller.utils.HttpResponse;
import domain.Cosmetic;
import domain.Customer;
import domain.PageMaker;
import domain.Recommend;
import domain.Review;
import domain.SearchPager;

@Controller
@RequestMapping("review")
public class ReviewController {

	@RequestMapping(value = "listpage.do", method = RequestMethod.GET)
	public String showReviewPage(@ModelAttribute("pager") SearchPager pager, Model model)
			throws ClientProtocolException, IOException {

		pager.setSearchType(null);
		pager.setKeyword(null); // 초기화
		
		String url = Const.getOriginpath() + "review/listpage/pagStart/" + pager.getPagStart() + "/pagEnd/"
				+ pager.getPagEnd();


		List<Review> list = jsonByList(url);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPager(pager);
		if (list.size() == 0) {
			pageMaker.setTotalCount(0);
		} else {
			pageMaker.setTotalCount(list.get(0).getListCount()); // 전체 개수를
		}
		// 온다.
		// index, size 0 일시 예외처리
		
		// 이미지 잘라서 넣기
		for(Review r : list){
			if(r.getImage() ==null)
				continue;
			r.setFiles(r.getImage().split(",")); 
		}
		
		for(Review r : list){
			System.out.println(r.toString());
		}

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("reviewList", list);

		System.out.println(pager.toString()+"2");
		return "/review/reviewList.jsp";

	}
	
	// 이미지 가져와서 넣어 주기
	@RequestMapping(value = "/getAttach/{reviewNo}")
	@ResponseBody
	public List<String> getAttach(@PathVariable("reviewNo")int reviewNo) throws Exception{
		String url = Const.getOriginpath() + "review/reviewNo/" + reviewNo;
		
		Review r = jsonObject(url);
		
		List<String> list = new ArrayList<>();
		String image = r.getImage();
		try{
				String [] images = image.split(",");
				for(String s : images){
					list.add(s);
			}
		}catch (NullPointerException e) {
			e.printStackTrace();
			return list;
		
		}
		
		return list;
	}
	
	

	// 검색
	@RequestMapping(value = "listsearch.do", method = RequestMethod.GET)
	public String showReviewSearch(@ModelAttribute("pager") SearchPager pager, Model model)
			throws ClientProtocolException, IOException {
		

		if (pager.getKeyword() == null || pager.getKeyword().trim() == "") {
			return "redirect:/review/listpage.do";
		}

		String url = Const.getOriginpath() + "review/listsearch/pagStart/" + pager.getPagStart() + "/pagEnd/"
				+ pager.getPagEnd() + "/searchType/" + pager.getSearchType() + "/keyword/" + pager.getKeyword();


		List<Review> list = jsonByList(url);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPager(pager);
		if (list.size() == 0) {
			pageMaker.setTotalCount(0);
		} else {
			pageMaker.setTotalCount(list.get(0).getListCount()); // 전체 개수를
		}

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("reviewList", list);

		return "/review/reviewList.jsp";

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

	// 리뷰 등록 폼
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public String reviewRegist(HttpSession session, Model model) throws IOException {

		if (session.getAttribute("loginCustomer") == null) {
			// 로그인 페이지로
		}
		String url = Const.getOriginpath() + "cosmetic/findAll";

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>() {
		};
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);
		List<String> cosmeticNames = new ArrayList<>();

		for (int i = 0; i < cosmetics.size(); i++) {
			cosmeticNames.add("'" + cosmetics.get(i).getCosmeticName() + "'");
		}
		response.close();

		model.addAttribute("cosmetics", cosmetics);
		model.addAttribute("cosmeticNames", cosmeticNames);
		

		return "/review/reviewRegister.jsp";
	}

	// 리뷰 등록
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String reviewRegist(Review review, HttpSession session, RedirectAttributes rttr,@RequestParam("cosmeticNo")int cosmeticNo, @RequestParam("grade")int grade)
			throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/register";

		review.setCustomer(new Customer());
		Cosmetic cosmetic = new Cosmetic();
		cosmetic.setCosmeticNo(cosmeticNo);
		review.setCosmetic(cosmetic);
		Recommend recommend = new Recommend();
		recommend.setCosmeticNo(cosmeticNo);
		recommend.setGrade(grade);
		recommend.setCustomerNo(2);
		
		review.setRecommend(recommend);
//		System.out.println(review.toString());
		
		String image="";
		int count =0;
		
		try{
			for(String s : review.getFiles()){ // image가 칼럼 하나에 다 넣기
				count++;
				image += s;
				if(count != review.getFiles().length)
					image +=",";
			}
		}catch (NullPointerException e) { // 널일 때 예외 처리
			e.printStackTrace();
		}
		
		review.setImage(image);
		
		
		System.out.println(review.toString()+"asdas");
		// Customer customer = (Customer)session.getAttribute("loginCustomer");
		// review.setCustomer(customer);
		jsonByObject(url, review);
		
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/review/listpage.do"; // 리뷰 목록
	}

	// 리뷰 수정
	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String reviewModify(int reviewNo, @ModelAttribute("pager") SearchPager pager, Model model)
			throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/modify/reviewNo/" + reviewNo;
		System.out.println(url);
		Review review = jsonObject(url);

		model.addAttribute("review", review);
//		return "/review/modifyPage.jsp";
		return "/review/reviewModify.jsp";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String reviewModify(Review review, SearchPager pager, RedirectAttributes rttr)
			throws ClientProtocolException, IOException {
		
//		@RequestParam("grade")int grade
		System.out.println(review.toString()+"!!!!");
//		Recommend recommend = review.getRecommend();
//		recommend.setGrade(grade);
		String url = Const.getOriginpath() + "review/modify";

		System.out.println(review.toString()+"^^");  
		
		jsonByObject(url, review);

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
		HttpPost httpPost = new HttpPost(url);
		
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpPost);
		
		StringEntity entity = new StringEntity(new Gson().toJson(reviewNo),Consts.UTF_8);
		
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");

		response.close();
		
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

		System.out.println(r.toString());
		
		model.addAttribute("review", r);

		return "/review/reviewDetail.jsp";
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
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		Review review = gsonBuilder.create().fromJson(responseCountent, type);

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
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		
		List<Review> reviews = gsonBuilder.create().fromJson(responseContent, type);
		
		for(Review r : reviews){
			System.out.println(r.toString());
		}
		
		response.close();

		return reviews;

	}

	private void jsonByObject(String url, Review review) throws ClientProtocolException, IOException {

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(review), StandardCharsets.UTF_8);
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		response.close();

	}

}
