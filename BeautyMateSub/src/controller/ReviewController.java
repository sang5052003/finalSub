package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
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

	//리뷰 리스트 
	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public String showReviewList(Model model) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/list";
		
		//String url = "http://localhost:8888/BeautyMate/review/list";
		//System.out.println(url2);
		System.out.println(url);

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();

		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);

		TypeToken<List<Review>> typeToke = new TypeToken<List<Review>>() {
		};

		Type type = typeToke.getType();
		List<Review> reviews = new Gson().fromJson(responseContent, type);

		response.close();
		for (Review r : reviews) {
			System.out.println(r.toString());
		}
		model.addAttribute("reviewList", reviews);

		return "/review/list.jsp";
	}
	
	// 리뷰 등록
	@RequestMapping(value ="register.do", method = RequestMethod.GET)
	public String reviewRegist(){
		
		return "/review/registerForm.jsp";
	}
	@RequestMapping(value ="register.do", method = RequestMethod.POST)
	public String reviewRegist(Review review, Model model){
		
		String url = Const.getOriginpath() + "review/register";
				
		return "/review/register.jsp";
	}
	
	
	
	
	
	
	

}
