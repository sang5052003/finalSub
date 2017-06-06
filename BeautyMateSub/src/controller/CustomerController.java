package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Customer;

@Controller
@RequestMapping("customer")
public class CustomerController {
	// @InitBinder
	// public void initBinder(WebDataBinder binder) throws Exception {
	// binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
	//
	// public void setAsText(String text) throws IllegalArgumentException {
	// try {
	// setValue(new SimpleDateFormat("yyyy-MM-dd").parse(text));
	// } catch (ParseException e) {
	// setValue(null);
	// } catch (java.text.ParseException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// }
	// });
	// }
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
	public String customerJoin(Customer customer) throws ClientProtocolException, IOException, ParseException {
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

		if (responseContent == "1") {
			return "redirect:customer/joinForm.do";
		}
		return "/customer/customerForm.jsp";
	}
}
