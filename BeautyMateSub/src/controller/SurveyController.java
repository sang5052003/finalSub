package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Cosmetic;
import domain.Customer;
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

	@RequestMapping(value = "skinTypeRegist.do", method=RequestMethod.POST)
	public String surveySkinTypeRegist(HttpSession session, HttpServletRequest req, Model model)
			throws ClientProtocolException, IOException {

		String skinType = req.getParameter("skinType");

		int customerNo = (int) session.getAttribute("customerNo");
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

	@RequestMapping(value = "skinTypeResult.do", method={RequestMethod.GET,RequestMethod.POST}, produces = "application/json; charset=UTF-8")
	public String skinTypeResult(HttpSession session, Model model) throws ClientProtocolException, IOException {
		int customerNo = (int) session.getAttribute("customerNo");
		String url = Const.getOriginpath() + "survey/customerNo/" + customerNo; 
		HttpGet httpGet = new HttpGet(url); 
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); 
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		TypeToken<SkinType> typeToken = new TypeToken<SkinType>() {};
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

	@RequestMapping(value = "surveyResult.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String surveyResult(HttpSession session, HttpServletRequest req, Model model)
			throws ClientProtocolException, IOException {
		int customerNo = (int) session.getAttribute("customerNo");
		// 추천된 화장품 목록 받기
		String url = Const.getOriginpath() + "recommend/list/customer/" + customerNo; // customerNo

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

		// 추천값 (유사도)받기
		String u = Const.getOriginpath() + "recommend/list/value/" + customerNo; // customerNo

		HttpGet hGet = new HttpGet(u); // <-> HttpPost

		CloseableHttpClient hc = HttpClients.createDefault();

		CloseableHttpResponse resp = hc.execute(hGet); // 예외 바깥으로
		// 던짐

		int rsc = HttpResponse.getInstance().getResponseStatus(resp);
		String rc = HttpResponse.getInstance().getResponseContent(resp);
		TypeToken<int[]> tToken = new TypeToken<int[]>() {
		};

		Type t = tToken.getType();
		int[] values = new Gson().fromJson(rc, t);
		resp.close();
		model.addAttribute("cosmetics", cosmetics);
		model.addAttribute("values", values);

		url = Const.getOriginpath() + "survey/customerNo/" + customerNo;
		httpGet = new HttpGet(url);
		httpClient = HttpClients.createDefault();
		response = httpClient.execute(httpGet);
		responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		responseContent = HttpResponse.getInstance().getResponseContent(response);
		TypeToken<SkinType> skinTypeToken = new TypeToken<SkinType>() {
		};
		Type skintype = skinTypeToken.getType();
		SkinType skinType = new Gson().fromJson(responseContent, skintype);
		response.close();

		String cusRecoIngre = skinType.getRecommendedIngredient();
		String[] splitCusRecoIngre = cusRecoIngre.split(",");

		String cusBanIngre = skinType.getBannedIngredient();
		String[] splitCusBanIngre = cusBanIngre.split(",");
		int cosNo = 0;
		String cosReco = null;
		String cosBan = null;
		for (Cosmetic c : cosmetics) {
			String recoIngre = c.getIngredients();
			cosNo = c.getCosmeticNo();
			String[] splitRecoIngre = recoIngre.split("·");
			List<String> recoList = new ArrayList<>();
			List<String> banList = new ArrayList<>();

			for (String scrifromXml : splitCusRecoIngre) {
				for (String sri : splitRecoIngre) {

					String xmldata = scrifromXml;
					String dbdata = sri;

					xmldata = xmldata.toString().replaceAll(" ", "");// 공백
					xmldata = xmldata.toString().replaceAll("\\p{Z}", ""); // 공백
					xmldata = xmldata.toString().replaceAll("\t", "");// 탭
					xmldata = xmldata.toString().replaceAll("\n", "");// 엔터

					dbdata = dbdata.toString().replaceAll(" ", "");
					dbdata = dbdata.toString().replaceAll("\\p{Z}", "");
					dbdata = dbdata.toString().replaceAll("\t", "");
					dbdata = dbdata.toString().replaceAll("\n", "");

					// 테스트
					// System.out.println(dbdata);
					// System.out.println(xmldata);
					// boolean torf = dbdata.equals(xmldata);
					// System.out.println(torf);

					if (dbdata.toString().equals(xmldata.toString())) {
						recoList.add(xmldata);
						String[] simpleArray = new String[recoList.size()];
						recoList.toArray(simpleArray);
						if (cosReco == null) {
							cosReco = Arrays.toString(simpleArray);
						} else {
							cosReco = cosReco + Arrays.toString(simpleArray);
						}
						recoList.clear();
						model.addAttribute("recoList_" + cosNo, cosReco);
					}
				}
			}
			for (String scbifromXml : splitCusBanIngre) {
				for (String sri : splitRecoIngre) {

					String xmldata = scbifromXml;
					String dbdata = sri;

					xmldata = xmldata.toString().replaceAll(" ", "");// 공백
					xmldata = xmldata.toString().replaceAll("\\p{Z}", ""); // 공백
					xmldata = xmldata.toString().replaceAll("\t", "");// 탭
					xmldata = xmldata.toString().replaceAll("\n", "");// 엔터

					dbdata = dbdata.toString().replaceAll(" ", "");
					dbdata = dbdata.toString().replaceAll("\\p{Z}", "");
					dbdata = dbdata.toString().replaceAll("\t", "");
					dbdata = dbdata.toString().replaceAll("\n", "");

					if (dbdata.toString().equals(xmldata.toString())) {
						banList.add(xmldata);
						String[] simpleArray = new String[banList.size()];
						banList.toArray(simpleArray);
						if (cosBan == null) {
							cosBan = Arrays.toString(simpleArray);
						} else {
							cosBan = cosBan + Arrays.toString(simpleArray);
						}
						banList.clear();
						model.addAttribute("banList_" + cosNo, cosBan);
					}
				}
			}
		}
		return "/survey/recommendResult.jsp";

	}

	// 픽미템 탭 누르면 나오는 페이지(설문을 했다면 skinTypeResult페이지가 나올것이다)
	@RequestMapping(value = "survey.do", method = RequestMethod.GET)
	public String survey(Customer customer, HttpSession session, HttpServletRequest req, Model model)
			throws ClientProtocolException, IOException {
		if (session.getAttribute("loginedCustomer") != null) {
			int cusNo = (int) session.getAttribute("customerNo");
			String url = Const.getOriginpath() + "customer/findNo/customerNo/" + cusNo;
			
			HttpGet httpGet = new HttpGet(url);
			CloseableHttpClient httpClient = HttpClients.createDefault();
			CloseableHttpResponse response = httpClient.execute(httpGet);
			
			int responseStatus = HttpResponse.getInstance().getResponseStatus(response);
			String responseContent = HttpResponse.getInstance().getResponseContent(response);

			TypeToken<Customer> typeToken = new TypeToken<Customer>() {};
			Type type = typeToken.getType();
			Customer cus = new Gson().fromJson(responseContent, type);
			String skinType = cus.getSkinType();
			response.close();
			
			if (skinType != null) {
				return "/survey/skinTypeResult.do";
			} else {
				return "/survey/survey.jsp";
			}
		} else {
			return "redirect:/customer/joinForm.do";
		}
	}

}
