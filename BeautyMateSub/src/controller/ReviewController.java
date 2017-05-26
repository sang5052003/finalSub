package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Review;

@Controller
@RequestMapping("review")
public class ReviewController {

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

	// 리뷰 등록
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public String reviewRegist() {

		return "/review/registerForm.jsp";
	}

	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String reviewRegist(Review review) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/register";
		int result = 0;
		result = jsonByObject(url, review);

		if (result == 1) { // 성공
			System.out.println(result);
		}

		return "/review/list.jsp"; // 리뷰 목록
	}

	// 리뷰 수정
	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String reviewModify() {

		return "/review/modifyForm.jsp";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String reviewModify(Review review) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "review/modify";
		int result = 0;
		result = jsonByObject(url, review);

		if (result == 1) { // 성공
			System.out.println(result);
		}

		return "/review/detail.jsp"; // 리뷰 상세
	}

	// 리뷰 삭제
	@RequestMapping(value = "remove.do", method = RequestMethod.GET)
	public String reviewRemove(String reviewNo) throws ClientProtocolException, IOException {
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

		// 성공 삭제 유무

		return "/review/modifyForm.jsp";
	}

	// 리뷰 디테일
	@RequestMapping(value = "detail.do", method = RequestMethod.GET)
	public String reviewDetail(Review review, Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/reviewNo/" + review.getReviewNo();

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseCountent = HttpResponse.getInstance().getResponseContent(response);

		// json to object 뮤직하나만 올라옴
		TypeToken<Review> typeToken = new TypeToken<Review>() {
		}; // 생성자없어서 {}
		Type type = typeToken.getType(); // java.lang.reflect

		Review r = new Gson().fromJson(responseCountent, type);

		response.close();

		model.addAttribute("review", r);

		return "/review/Detail.jsp";
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
