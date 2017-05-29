package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import domain.BeautyTip;
import domain.Cosmetic;

@Controller
@RequestMapping("myPouch")
public class MyPouchController {
	
	private final String customerID ="kim";
	
	@RequestMapping(value = "cosmetic/list.do", method = RequestMethod.GET)
	public String pouchCosmeticShowAll(HttpServletRequest request,Model model) throws ClientProtocolException, IOException {
		
		//처음 파우치 접근 시 실행
//		HttpSession session = request.getSession(false); // false세션정보 없으면 만들지 않음
//		if (session != null) {
//			customerID = (String)session.getAttribute("customerID");
//			request.setAttribute("customerID", customerID);
//			return customerID;
//		}
//		else{
//			return "redirect:list"; //로그인 페이지로
//		}
	
		String url = Const.getOriginpath() + "myPouch/customerID/"+customerID+"/cosmetic/find";
		HttpGet httpGet = new HttpGet(url); 
 
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로 던짐
		
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
 
		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);
 
		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>() {};
 
		Type type = typeToken.getType();
		List<Cosmetic> list = new Gson().fromJson(responseContent, type);
		
		url = Const.getOriginpath() + "myPouch/customerID/"+customerID+"/beauty/find";
		httpGet = new HttpGet(url); 
 
		httpClient = HttpClients.createDefault();
		response = httpClient.execute(httpGet); // 예외 바깥으로 던짐
		
		responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		responseContent = HttpResponse.getInstance().getResponseContent(response);
 
		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);
 
		TypeToken<List<BeautyTip>> typeToken2 = new TypeToken<List<BeautyTip>>() {};
 
		type = typeToken2.getType();
		List<BeautyTip> blist = new Gson().fromJson(responseContent, type);
 
		System.out.println(blist.get(0).toString());
		System.out.println(blist.size());
		System.out.println(list.get(0).toString());
		response.close();
 
		model.addAttribute("list", list);
		model.addAttribute("blist", blist);
		return "/list.jsp";
	}
	
	@RequestMapping(value = "beautyTip/list.do", method = RequestMethod.GET)
	public String pouchBeautyTipShowAll(Model model) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "myPouch/customerID/"+customerID+"/beauty/find";
		HttpGet httpGet = new HttpGet(url); 
 
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로 던짐
		
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
 
		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);
 
		TypeToken<List<BeautyTip>> typeToken = new TypeToken<List<BeautyTip>>() {};
 
		Type type = typeToken.getType();
		List<BeautyTip> blist = new Gson().fromJson(responseContent, type);
 
		System.out.println(blist.get(0).toString());
		System.out.println(blist.size());
		response.close();
 
		model.addAttribute("blist", blist);
		return "/list.jsp";
	}
	
	@RequestMapping(value = "recommend/list.do", method = RequestMethod.GET)
	public String recommendedCosmeticShowAll(Model model) throws ClientProtocolException, IOException {
		
		String url = Const.getOriginpath() + "myPouch/customerID/"+customerID+"/recommend/find";
		HttpGet httpGet = new HttpGet(url); 
 
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // 예외 바깥으로 던짐
		
		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
 
		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);
 
		TypeToken<List<Cosmetic>> typeToken = new TypeToken<List<Cosmetic>>() {};
 
		Type type = typeToken.getType();
		List<Cosmetic> list = new Gson().fromJson(responseContent, type);
 
		System.out.println(list.size());
		response.close();
 
		model.addAttribute("list", list);
		return "/list.jsp";
	}

}
