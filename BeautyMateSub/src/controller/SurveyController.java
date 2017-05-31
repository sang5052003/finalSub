package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
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
import domain.Cosmetic;
import domain.Recommend;
import domain.SkinType;
import domain.Test;


@Controller
@RequestMapping("survey")
public class SurveyController {
	
	private HttpResponse httpResponse;

	// 설문지 등록
	@RequestMapping(value = "skinTypeRegistForm.do", method = RequestMethod.GET)
	public String surveySkinTypeRegistForm(HttpSession session) {

		return "/survey/skinTypeRegistForm.jsp";
	}

	@RequestMapping(value = "skinTypeRegist.do")
	public String surveySkinTypeRegist(HttpServletRequest req, Model model)
			throws ClientProtocolException, IOException {


		String skinType = req.getParameter("skinType");

		int customerNo = 123;
		String url = Const.getOriginpath() + "survey/insert/customerNo/" + customerNo + "/skinType/" + skinType;

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(skinType));// 준비
		httpPost.setEntity(entity);// 넣고
		httpPost.setHeader("Content-type", "application/json");// 가는거 json이라고 명시
		CloseableHttpResponse response = httpClient.execute(httpPost);

		HttpPost hp = new HttpPost(url);
		CloseableHttpClient hc = HttpClients.createDefault();

		StringEntity e = new StringEntity(new Gson().toJson(customerNo));// 준비
		httpPost.setEntity(e);// 넣고
		httpPost.setHeader("Content-type", "application/json");// 가는거 json이라고 명시
		CloseableHttpResponse resp = hc.execute(hp);

		return "/survey/skinTypeResult.do";

	}


	@RequestMapping(value = "skinTypeResult.do", method = RequestMethod.POST)
	public String skinTypeResult(HttpSession session, Model model) throws ClientProtocolException, IOException {
//		고객번호 가져온다.
//		int customerNo = (int) session.getAttribute("customerNo");
		
		String url = Const.getOriginpath() + "survey/customerNo/" + 1; // get , 1=customerNo

		// apache lib
		HttpGet httpGet = new HttpGet(url); // <-> HttpPost

		// HttpClient
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// os에 붙음
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로
																		// 던짐

		// 상태코드확인
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		// 내용을 json으로 받는다(stream으로)
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		// 상태체크해서 처리 해줘야 됨
		System.out.println(responseStatusCode);

		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌

		TypeToken<SkinType> typeToken = new TypeToken<SkinType>() {};

		// java.lang.reflect.type, import
		Type type = typeToken.getType();
		SkinType skinType = new Gson().fromJson(responseContent, type);
		response.close();
		
		model.addAttribute("skinType", skinType);

		return "/survey/skinTypeResult.jsp";

	}

	// 설문지 평점 등록
	@RequestMapping(value = "gradeRegistForm.do", method = RequestMethod.GET)
	public String surveyGradeRegistForm(HttpSession session, Model model) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "cosmetic/findAll";

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);



		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>(){};	
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);
		
		response.close();

		model.addAttribute("cosmetics", cosmetics);
		
		return "/survey/gradeRegistForm.jsp";
	}

	@RequestMapping(value = "gradeRegist.do", method = RequestMethod.POST)
	public String surveyGradeRegist(HttpServletRequest req, Model model, Recommend recommend)
			throws ClientProtocolException, IOException {

		recommend.setCustomerNo(1);
		recommend.setCosmeticNo(Integer.parseInt(req.getParameter("cosmeticNo")));
		recommend.setGrade(Integer.parseInt(req.getParameter("grade")));

		String url = Const.getOriginpath() + "recommend/insert";

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(recommend));// 준비
		httpPost.setEntity(entity);// 넣고
		httpPost.setHeader("Content-type", "application/json");// 가는거 json이라고 명시
		CloseableHttpResponse response = httpClient.execute(httpPost);

		int responseStatus = getResponseStatus(response);
		String responseContent = getResponseContent(response);
//		System.out.println(responseStatus);

		return "/survey/surveyResult.do";


	}

	@RequestMapping(value = "surveyResult.do")
	public String surveyResult(HttpServletRequest req, Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "recommend/list/customer/" + 1; // get
																				// ,
																				// 1=customerNo

		// apache lib
		HttpGet httpGet = new HttpGet(url); // <-> HttpPost

		// HttpClient
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// os에 붙음
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로
																		// 던짐

		// 상태코드확인
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		// 내용을 json으로 받는다(stream으로)
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		// 상태체크해서 처리 해줘야 됨
		System.out.println(responseStatusCode);

		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌

		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>() {
		};

		// java.lang.reflect.type, import
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("cosmetics", cosmetics);

		return "/survey/recommendResult.jsp";

	}

	// 설문지 삭제
	@RequestMapping(value = "clear.do", method = RequestMethod.GET)
	public String surveyClear(int surveyResultNo) {

		// 찾아올 설문지 번호
		int surveyNo = 0;

		return "redirect:survey/survey.do?surveyNo=" + surveyNo;
	}

	// 픽미템 탭 누르면 나오는 페이지(설문을 했다면 skinTypeResult페이지가 나올것이다)
	@RequestMapping(value = "survey.do", method = RequestMethod.GET)

	public String survey(HttpServletRequest req, Model model) {

		String skinType = (String) req.getSession().getAttribute("skinType");

		if (skinType != null) {
			return "/survey/skinTypeResult.do";
		} else {
			return "/survey/survey.jsp";
		}
	}

	private int getResponseStatus(CloseableHttpResponse response) {
		return response.getStatusLine().getStatusCode();
	}

	private String getResponseContent(CloseableHttpResponse response) {
		HttpEntity httpEntity = response.getEntity();
		InputStream is = null;
		StringBuilder contentBuilder = new StringBuilder();

		try {
			is = httpEntity.getContent();

			byte[] contentBytes = new byte[1024];
			while (true) {
				int readCount = is.read(contentBytes);
				if (readCount == -1) {
					break;
				}
				contentBuilder.append(new String(contentBytes, 0, readCount));
			}
		} catch (UnsupportedOperationException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (is != null)
					is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return contentBuilder.toString();
	}
}
