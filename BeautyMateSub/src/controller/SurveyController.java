package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Cosmetic;
import domain.SkinType;

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

		int customerNo = 1;
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

	@RequestMapping(value = "skinTypeResult.do", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	public String skinTypeResult(HttpSession session, Model model) throws ClientProtocolException, IOException {
//		고객번호 가져온다.
//		int customerNo = (int) session.getAttribute("customerNo");
		String url = Const.getOriginpath() + "survey/customerNo/" + 1; // get , 1=customerNo
		System.out.println(url);
		// apache lib
		HttpGet httpGet = new HttpGet(url); // <-> HttpPost
		// HttpClient
		CloseableHttpClient httpClient = HttpClients.createDefault();
		// os에 붙음
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로 던짐
		// 상태코드확인
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		// 내용을 json으로 받는다(stream으로)
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		// 상태체크해서 처리 해줘야 됨
		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌
		TypeToken<SkinType> typeToken = new TypeToken<SkinType>() {};
		// java.lang.reflect.type, import
		Type type = typeToken.getType();
		
		
		SkinType skinType = new Gson().fromJson(responseContent, type);
		System.out.println(skinType);
//		List<NameValuePair> list = new ArrayList<NameValuePair>();
//		SkinType skin = new SkinType();
//		skin.setBaumanType(skinType.getBaumanType());
//		skin.setExplanation(skinType.getExplanation());
//		skin.setRecommendedIngredient(skinType.getRecommendedFood());
//		skin.setBannedIngredient(skinType.getBannedIngredient());
//		skin.setRecommendedFood(skinType.getRecommendedFood());
//		skin.setHabit(skinType.getHabit());
		
//		list.add(new BasicNameValuePair("baumanType", skinType.getBaumanType().toString()));
//		list.add(new BasicNameValuePair("explanation", skinType.getExplanation().toString()));
//		list.add(new BasicNameValuePair("recommendedIngredient", skinType.getRecommendedIngredient().toString()));
//		list.add(new BasicNameValuePair("bannedIngredient", skinType.getBannedIngredient().toString()));
//		list.add(new BasicNameValuePair("recommendedFood", skinType.getRecommendedFood().toString()));
//		list.add(new BasicNameValuePair("habit", skinType.getHabit().toString()));
//		UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity();
//	    formEntity.setContentType("application/json");
//	    formEntity.setContentEncoding("UTF-8");
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
		return "/survey/gradeRegistForm.jsp";
	}


	@RequestMapping(value = "surveyResult.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String surveyResult(HttpServletRequest req, Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "recommend/list/customer/" + 1; // get, 1=customerNo

		HttpGet httpGet = new HttpGet(url); // <-> HttpPost

		CloseableHttpClient httpClient = HttpClients.createDefault();

		CloseableHttpResponse response = httpClient.execute(httpGet); 

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		
		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>() {
		};
		
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);
		response.close();
		
		
//		추천값 (유사도)받기
		String u = Const.getOriginpath() + "recommend/list/value/" + 1; 


		HttpGet hGet = new HttpGet(u); // <-> HttpPost

		// HttpClient
		CloseableHttpClient hc = HttpClients.createDefault();

		// os에 붙음
		CloseableHttpResponse resp = hc.execute(hGet); // 예외 바깥으로
		// 던짐

		// 상태코드확인
		int rsc = HttpResponse.getInstance().getResponseStatus(resp);
		// 내용을 json으로 받는다(stream으로)
		String rc = HttpResponse.getInstance().getResponseContent(resp);

		TypeToken<int[]> tToken = new TypeToken<int[]>() {
		};

		Type t = tToken.getType();
		int[] values = new Gson().fromJson(rc, t);
		resp.close();
		model.addAttribute("cosmetics", cosmetics);
		model.addAttribute("values", values);
		return "/survey/recommendResult.jsp";

	}

	// 픽미템 탭 누르면 나오는 페이지(설문을 했다면 skinTypeResult페이지가 나올것이다)
	@RequestMapping(value = "survey.do", method = RequestMethod.GET)

	public String survey(HttpServletRequest req, Model model) {
		// 커스터머 검색 후 그아이디에 스킨타입있는지확인후 그스킨타입으로 확인해야함 *****

		String skinType = (String) req.getSession().getAttribute("skinType");

		if (skinType != null) {
			return "/survey/skinTypeResult.do";
		} else {
			return "/survey/survey.jsp";
		}
	}

}
