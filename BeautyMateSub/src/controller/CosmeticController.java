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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Cosmetic;
import domain.CosmeticCategory;
import domain.Test;

@Controller
@RequestMapping("cosmetic")
public class CosmeticController {

	// test용
	@RequestMapping(value = "test.do", method = RequestMethod.GET)
	public String test(Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "musics"; // get

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
		System.out.println("concon" + responseContent);

		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌

		TypeToken<List<Test>> typeToken = new TypeToken<List<Test>>() {
		};

		// java.lang.reflect.type, import
		Type type = typeToken.getType();
		List<Test> musics = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("musicList", musics);

		return "/test/test.jsp";
	}

	//////////////////////////////////////////////////////////////////////////

	// 화장품 등록
	@RequestMapping(value = "registerForm.do", method = RequestMethod.GET)
	public String cosmeticShowRegisterForm() {
		return "/cosmetic/registerForm.jsp";

	}

	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String cosmeticRegist(Cosmetic cosmetic) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "cosmetic/insert";

		System.out.println(cosmetic.toString());
		
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		
		StringEntity entity = new StringEntity(new Gson().toJson(cosmetic));
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);
		
		response.close();

		if(responseContent == "1"){
			return "redirect:cosmetic/showAll.do";
		}
			return "/cosmetic/registerForm.jsp";
	}

	// 화장품 검색(전체)
	@RequestMapping(value = "showAll.do", method = RequestMethod.GET)
	public String cosmeticShowAll(Model model) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "cosmetic/findAll";

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);


		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>(){};	
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);
		
		System.out.println("TypeToken");

		response.close();

		model.addAttribute("cosmetics", cosmetics);
		
		System.out.println("model");

		return "list.jsp";
	}

	// 화장품 검색(카테고리)
	@RequestMapping(value = "showByCategory.do", method = RequestMethod.GET)
	public String cosmeticShowByCategory(CosmeticCategory cosmeticCategory, Model model) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "cosmetic/findByCategory/" + cosmeticCategory;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);


		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>(){};
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("cosmetics", cosmetics);

		return "/cosmetic/list.jsp";
	}

	// 화장품 검색(이름)
	@RequestMapping(value = "showByName.do", method = RequestMethod.GET)
	public String cosmeticShowByName(String cosmeticTitle, Model model) throws ClientProtocolException, IOException {
		
		System.out.println("into");

		String url = Const.getOriginpath() + "cosmetic/findByTitle/" + cosmeticTitle;
		
		System.out.println(url);

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);


		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>(){};
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("cosmetics", cosmetics);
		System.out.println("model");

		return "list.jsp";
	}

	// 화장품 검색(브랜드)
	@RequestMapping(value = "showByBrand.do", method = RequestMethod.GET)
	public String cosmeticShowByBrand(String brand, Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "cosmetic/findByBrand/" + brand;
		
	

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);


		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>(){};
		Type type = typeToken.getType();
		List<Cosmetic> cosmetics = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("cosmetics", cosmetics);

		return "/cosmetic/list.jsp";
	}

	// 화장품 상세
	@RequestMapping(value = "showByNo.do", method = RequestMethod.GET)
	public String cosmeticShowByNo(int cosmeticNo, Model model) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "cosmetic/findByNo/" + cosmeticNo;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);


		TypeToken<Cosmetic> typeToken = new TypeToken<Cosmetic>(){};
		Type type = typeToken.getType();
		Cosmetic cosmetic = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("cosmetic", cosmetic);

		return "/cosmetic/detail.jsp";
	}

	// 화장품 수정
	@RequestMapping(value = "modifyForm.do", method = RequestMethod.GET)
	public String cosmeticShowEdit(Model model, int cosmeticNo) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "cosmetic/findByNo/" + cosmeticNo;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);


		TypeToken<Cosmetic> typeToken = new TypeToken<Cosmetic>(){};
		Type type = typeToken.getType();
		Cosmetic cosmetic = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("cosmetic", cosmetic);
		
		return "/cosmetic/modifyForm.jsp";
	}
		
	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String cosmeticModify(Cosmetic cosmetic) throws ClientProtocolException, IOException {
		
		System.out.println(cosmetic.toString());
		
		String url = Const.getOriginpath() + "cosmetic/modify";

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		
		StringEntity entity = new StringEntity(new Gson().toJson(cosmetic));
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);
		
		response.close();

		if(responseContent == "1"){
			return "redirect:showAll.do";
		}
			return "/cosmetic/modifyForm.jsp";
		
	}

	// 화장품 삭제
	@RequestMapping(value = "remove.do", method = RequestMethod.GET)
	public String cosmeticRemove(int cosmeticNo) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "cosmetic/remove/" + cosmeticNo;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);

		response.close();

		return "redirect:showAll.do";
		
	}
	

}