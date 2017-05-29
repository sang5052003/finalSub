package controller;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.util.List;

import org.apache.http.HttpEntity;
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
import domain.Cosmetic;
import domain.CosmeticCategory;
import domain.Test;

@Controller
@RequestMapping("cosmetic")
public class CosmeticController {

//	// test용
	@RequestMapping(value = "test.do", method = RequestMethod.GET)
	public String test(Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "musics"; // get

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
	public String cosmeticShowRegisterForm(Cosmetic cosmetic) {

		return "/cosmetic/registerForm.jsp";
	}

	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String surveySkinTypeRegist(Model model) {

		return "/cosmetic/list.jsp";
	}

	// 화장품 검색(전체)
	@RequestMapping(value = "showAll.do", method = RequestMethod.GET)
	public String cosmeticShowAll(Model model) throws ClientProtocolException, IOException {


		return "/cosmetic/list.jsp";
	}

	// 화장품 검색(카테고리)
	@RequestMapping(value = "showByCategory.do", method = RequestMethod.GET)
	public String cosmeticShowByCategory(CosmeticCategory cosmeticCategory, Model model) {

		String category = "";
		return "/cosmetic/list?category=" + category;
	}

	// 화장품 검색(이름)
	@RequestMapping(value = "showByName.do", method = RequestMethod.GET)
	public String cosmeticShowByName(String name, Model model) {

		String cosmeticName = "";
		return "/cosmetic/list?cosmeticName=" + cosmeticName;
	}

	// 화장품 검색(브랜드)
	@RequestMapping(value = "showByBrand.do", method = RequestMethod.GET)
	public String cosmeticShowByBrand(String brand, Model model) {

		return "/cosmetic/list?brand=" + brand;
	}

	// 화장품 상세
	@RequestMapping(value = "showByNo.do", method = RequestMethod.GET)
	public String cosmeticShowByNo(String brand, Model model) {

		return "/cosmetic/list?brand=" + brand;
	}
}
