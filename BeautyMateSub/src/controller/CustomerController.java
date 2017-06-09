package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.management.JMRuntimeException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.Consts;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Cosmetic;
import domain.Customer;

@Controller
@RequestMapping("customer")
public class CustomerController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping(value = "joinForm.do", method = RequestMethod.GET)
	public String cosmeticShowRegisterForm() {
		return "/customer/customerForm.jsp";

	}

	
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String customerJoin(Customer customer, RedirectAttributes rttr)
			throws ClientProtocolException, IOException, ParseException {
		// SimpleDateFormat new_format = new SimpleDateFormat("yyyy-MM-dd");

		String url = Const.getOriginpath() + "customer/insert";

		System.out.println(customer.toString());

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		JsonSerializer<Date> ser = new JsonSerializer<Date>() {
			@Override
			public JsonElement serialize(Date src, Type typeOfSrc, JsonSerializationContext context) {
				return src == null ? null : new JsonPrimitive(src.getTime());
			}
		};

		JsonDeserializer<Date> deser = new JsonDeserializer<Date>() {
			@Override
			public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context)
					throws JsonParseException {
				return json == null ? null : new Date(json.getAsLong());
			}
		};

		Gson gson = new GsonBuilder().registerTypeAdapter(Date.class, ser).registerTypeAdapter(Date.class, deser)
				.create();

		StringEntity entity = new StringEntity(gson.toJson(customer));
		System.out.println(gson.toJson(customer));

		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		int responseStatusCode = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatusCode);
		System.out.println("concon" + responseContent);

		response.close();

		if (responseContent.equals("1")) {
			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/customer/joinForm.do";
		} else {
			rttr.addFlashAttribute("msg", "FAIL");
			return "redirect:/customer/joinForm.do";
		}

	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String customerLogin(Customer customer,HttpServletRequest request,RedirectAttributes rttr) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "customer/login/id/"+customer.getId();

	
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(customer), Consts.UTF_8); // throw
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json"); // data가
																// json이다(os에
																// noti)

		CloseableHttpResponse response = httpClient.execute(httpPost); // throw

		int responseStatus = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseStatus);
		System.out.println("concon" + responseContent);
		TypeToken<Customer> typeToken = new TypeToken<Customer>() {};
		 
		Type type = typeToken.getType();
		Customer cus = new Gson().fromJson(responseContent, type);

		 
		 if(cus!=null){
			 HttpSession session = request.getSession(); // 세션은 설정 해줄 수 있음 타이머
			 session.setAttribute("loginedCustomer", cus.getId());
			 session.setAttribute("customerNo", cus.getCustomerNo());
		
		 }else{
			 HttpSession session = request.getSession(false); //
				if (session != null) {
					session.invalidate();
				}
				rttr.addFlashAttribute("msg", "LOGINFAIL");
				return "redirect:/customer/joinForm.do";

		 }
		 
		response.close();
		httpClient.close();

		return "/index.jsp";
	}
	
	@RequestMapping(value = "logout.do")
	public void customerLogOut(HttpSession session ,HttpServletRequest request,HttpServletResponse response) throws ClientProtocolException, IOException {
		System.out.println("before:"+session);
		
		session.removeAttribute("loginedCustomer");
		session.removeAttribute("customerNo");
		session.invalidate();
		
		System.out.println(session);
		response.sendRedirect(request.getContextPath());
	}
	
	

}
