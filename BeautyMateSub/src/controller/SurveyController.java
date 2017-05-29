package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
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

import controller.utils.HttpResponse;
import domain.Customer;

@Controller
@RequestMapping("survey")
public class SurveyController {
	
	private HttpResponse httpResponse;

	// 설문지 등록
	@RequestMapping(value = "skinTypeRegistForm.do", method = RequestMethod.GET)
	public String surveySkinTypeRegistForm(HttpSession session) {

		return "/survey/skinTypeRegistForm.jsp";
	}

	@RequestMapping(value = "skinTypeRegist.do", method = RequestMethod.POST)
	public String surveySkinTypeRegist(HttpServletRequest req, Model model) {

		return "/survey/skinTypeResult.jsp";
	}

	// 설문지 평점 등록
	@RequestMapping(value = "gradeRegistForm.do", method = RequestMethod.GET)
	public String surveyGradeRegistForm(HttpSession session) {

		return "/survey/gradeRegistForm.jsp";
	}

	@RequestMapping(value = "gradeRegist.do", method = RequestMethod.POST)
	public String surveyGradeRegist(HttpServletRequest req, Model model) {

		return "/survey/recommendResult.jsp";
	}

	// 픽미템 탭 누르면 나오는 페이지(설문을 했다면 skinTypeResult페이지가 나올것이다)
	@RequestMapping(value = "survey.do", method = RequestMethod.GET)
	public String survey(int surveyNo, Model model, Customer customer, HttpServletRequest request)
			throws ClientProtocolException, IOException {

		String url = "http://localhost:8888/BeautyMate/servay/servay";

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(customer));
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		int responseStatus = httpResponse.getResponseStatus(response);
		String responseContent = httpResponse.getResponseContent(response);
		System.out.println(responseStatus);

		TypeToken<Customer> typeToken = new TypeToken<Customer>() {};
		Type type = typeToken.getType();
		Customer loginedCustomer = new Gson().fromJson(responseContent, type);

		response.close();

		if (loginedCustomer != null) {
			return "/survey/survey.jsp";
		} else {
			return "/login.jsp";
		}
	}
}
