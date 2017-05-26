package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Date;
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
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.DateDeserializer;
import controller.utils.HttpResponse;
import domain.BeautyTip;
import domain.BeautyTipCategory;
import domain.Customer;

@Controller
@RequestMapping("beautyTip")
public class BeautyTipController {

	@RequestMapping(value = "showDetail.do", method = RequestMethod.GET)
	public String beautyTipShowDetail(int beautyTipNo, Model model) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/find/id/" + beautyTipNo;// get

		// apache lib
		HttpGet httpGet = new HttpGet(url); // <-> HttpPost

		// HttpClient
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// os에 붙음
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로
		
		// 상태코드확인
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		// 내용을 json으로 받는다(stream으로)
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		// 상태체크해서 처리 해줘야 됨
		// System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);

		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌

		TypeToken<BeautyTip> typeToken = new TypeToken<BeautyTip>() {
		};

		// java.lang.reflect.type, import
		Type type = typeToken.getType();

		// 객체에 Date타입 필드가 있는 경우
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		BeautyTip beautyTip = gsonBuilder.create().fromJson(responseContent, type);

		// BeautyTip beautyTip = new Gson().fromJson(responseContent, type);

		System.out.println(beautyTip);

		response.close();

		model.addAttribute("beautyTip", beautyTip);

		return "/beautyTip/detail.jsp";
	}

	@RequestMapping(value = "registForm.do", method = RequestMethod.GET)
	public String beautyTipRegistForm(HttpSession session) {

		// session체크(로그인)

		//
		return "redirect:/beautyTip/registForm.jsp";
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String beautyTipRegist(HttpServletRequest req) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/insert";

		// req, jsp에서 받아온 값으로 beautyTip객체 생성
		BeautyTip beautyTip = new BeautyTip(0, "cbeautyTipTitle", "cimage", "cbeautyTipContent", "cvideo",
				new Customer(1, "cid", "cpassword", "cname", "m", null, "email", null),
				BeautyTipCategory.makeupInformation, null);

		//
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// form(데이터) 집어넣어서 보내기
		// user객체를 json으로..
		StringEntity entity = new StringEntity(new Gson().toJson(beautyTip)); // throw
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json"); // data가
																// json이다(os에
																// noti)

		CloseableHttpResponse response = httpClient.execute(httpPost); // throw

		int responseStatus = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		// System.out.println(responseStatus);

		//true/false
		System.out.println("resp : " + responseContent);

		//이전페이지(form jsp)에서 넘어온 값으로 BeautyTipCategory를 지정
		return "redirect:/beautyTip/list.do?category=" + BeautyTipCategory.makeupInformation;
	}

	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public String beautyTipList(BeautyTipCategory category, Model model) throws ClientProtocolException, IOException {

		// findAll
		String url = Const.getOriginpath() + "beautyTip/find/category/" + category;// get

		// apache lib
		HttpGet httpGet = new HttpGet(url); // <-> HttpPost

		// HttpClient
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// os에 붙음
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로
		
		// 상태코드확인
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		// 내용을 json으로 받는다(stream으로)
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		// 상태체크해서 처리 해줘야 됨
		// System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);

		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌

		TypeToken<List<BeautyTip>> typeToken = new TypeToken<List<BeautyTip>>() {
		};

		// java.lang.reflect.type, import
		Type type = typeToken.getType();

		// 객체에 Date타입 필드가 있는 경우
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		List<BeautyTip> beautyTipList = gsonBuilder.create().fromJson(responseContent, type);

		// BeautyTip beautyTip = new Gson().fromJson(responseContent, type);

		response.close();

		model.addAttribute("beautyTipList", beautyTipList);

		return "/beautyTip/list.jsp";
	}
	
	//수정
	@RequestMapping(value = "editForm.do", method = RequestMethod.GET)
	public String beautyTipEditForm(int beautyTipNo, HttpSession session, Model model) throws ClientProtocolException, IOException {

		// session체크(로그인)

		String url = Const.getOriginpath() + "beautyTip/find/id/" + beautyTipNo;// get

		// apache lib
		HttpGet httpGet = new HttpGet(url); // <-> HttpPost

		// HttpClient
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// os에 붙음
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로
		
		// 상태코드확인
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		// 내용을 json으로 받는다(stream으로)
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		// 상태체크해서 처리 해줘야 됨
		// System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);

		// json(String) to object
		// gson lib
		// TypeToken은 생성자가 없기 때문에 바로 {}닫아 줌

		TypeToken<BeautyTip> typeToken = new TypeToken<BeautyTip>() {
		};

		// java.lang.reflect.type, import
		Type type = typeToken.getType();

		// 객체에 Date타입 필드가 있는 경우
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		BeautyTip beautyTip = gsonBuilder.create().fromJson(responseContent, type);

		// BeautyTip beautyTip = new Gson().fromJson(responseContent, type);

		System.out.println(beautyTip);

		response.close();

		model.addAttribute("beautyTip", beautyTip);
		
		//
		return "/beautyTip/editForm.jsp"; //디스패쳐방식으로 수정할 beautyTip을 들고 감
	}

	@RequestMapping(value = "edit.do", method = RequestMethod.POST)
	public String beautyTipEdit(HttpServletRequest req) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/modify";

		/*BeautyTip tip = (BeautyTip)req.getAttribute("beautyTip");
		System.out.println("attr");
		System.out.println(tip);
		System.out.println("/attr");*/
		
		
		
		// req, jsp에서 받아온 값으로 beautyTip객체 수정
		BeautyTip beautyTip = new BeautyTip(5, "editTitle", "editimage", "editbeautyTipContent", "cvideo",
				new Customer(1, "cid", "cpassword", "cname", "m", null, "email", null),
				BeautyTipCategory.makeupInformation, null);

		//
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// form(데이터) 집어넣어서 보내기
		// user객체를 json으로..
		StringEntity entity = new StringEntity(new Gson().toJson(beautyTip)); // throw
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json"); // data가
																// json이다(os에
																// noti)

		CloseableHttpResponse response = httpClient.execute(httpPost); // throw

		int responseStatus = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		// System.out.println(responseStatus);

		//true/false
		System.out.println("resp : " + responseContent);

		//이전페이지(form jsp)에서 넘어온 값으로 BeautyTipCategory를 지정
		return "redirect:/beautyTip/list.do?category=" + BeautyTipCategory.makeupInformation;
	}
}
