package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.DateDeserializer;
import controller.utils.HttpResponse;
import domain.BeautyTip;
import domain.Customer;
import domain.Reply;
import domain.Review;

@RestController
@RequestMapping("/replies")
public class TestController {
	
	

	// @RequestMapping(value = "/review/reviewNo/{reviewNo}")
	// public ResponseEntity<Review> review(@PathVariable("reviewNo") int
	// reviewNo){
	//
	// String url = Const.getOriginpath() +
	//
	// }

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody Reply reply) throws ClientProtocolException, IOException { // 등록

		System.out.println("ss");
		Customer c = new Customer();
		c.setCustomerNo(1);
		reply.setCustomer(c);
		System.out.println(reply.toString());
		String url = Const.getOriginpath() + "reply/register";

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity sEntity = new StringEntity(new Gson().toJson(reply), StandardCharsets.UTF_8);
		httpPost.setEntity(sEntity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);
		response.close();

		ResponseEntity<String> entity = null;
		try {
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); // 실패했을
																							// 경우
		}
		return entity;
	}

	// 리스트
	@RequestMapping(value = "/all/{reviewNo}", method = RequestMethod.GET)
	public ResponseEntity<Review> reviewReply(@PathVariable("reviewNo") int reviewNo)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "review/reviewNo/" + reviewNo;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<Review> typeToken = new TypeToken<Review>() {
		};

		Type type = typeToken.getType();

		ResponseEntity<Review> entity = null;

		Review review = new Gson().fromJson(responseContent, type);
		try {
			entity = new ResponseEntity<>(review,HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
		// String url = Const.getOriginpath() + "reply/list/reviewNo/" +
		// reviewNo;
		//
		// HttpGet httpGet = new HttpGet(url);
		//
		// CloseableHttpClient httpClient = HttpClients.createDefault();
		// CloseableHttpResponse response = httpClient.execute(httpGet);
		//
		// String responseContent =
		// HttpResponse.getInstance().getResponseContent(response);
		//
		// TypeToken<List<Reply>> typeToken = new TypeToken<List<Reply>>() {
		// };
		//
		// Type type = typeToken.getType();
		//
		// ResponseEntity<List<Reply>> entity = null;
		//
		// List<Reply> reply = new Gson().fromJson(responseContent, type);
		// try {
		// entity = new ResponseEntity<>(reply, HttpStatus.OK);
		//
		// } catch (Exception e) {
		// e.printStackTrace();
		// entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		// }
		//
		// return entity;
	}

	@RequestMapping(value = "/modify/{replyNo}", method = RequestMethod.GET) // 수정
	public ResponseEntity<Reply> update(@PathVariable("replyNo")int replyNo)
			throws ClientProtocolException, IOException {
		
		
		String url = Const.getOriginpath() + "reply/replyNo/"+replyNo;
		
		HttpGet httpGet = new HttpGet(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);


		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		
		TypeToken<Reply> typeToken = new TypeToken<Reply>() {
		};

		Type type = typeToken.getType();

		
		ResponseEntity<Reply> entity = null;
		
		Reply reply = new Gson().fromJson(responseContent, type);

		try {

			entity = new ResponseEntity<>(reply, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST) // 수정
	public ResponseEntity<String> updatePost(@RequestBody Reply reply)
			throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "reply/modify";

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity sEntity = new StringEntity(new Gson().toJson(reply), StandardCharsets.UTF_8);
		httpPost.setEntity(sEntity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);
		response.close();

		ResponseEntity<String> entity = null;

		try {

			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "remove/{replyNo}", method = RequestMethod.DELETE) // 삭제
	public ResponseEntity<String> remove(@PathVariable("replyNo") int replyNo)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "reply/remove/replyNo/" + replyNo;

		HttpDelete httpDel = new HttpDelete(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpDel);

		ResponseEntity<String> entity = null;
		try {
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	////////////// beautyTip//////////////
	@RequestMapping(value = "beautyTip/register", method = RequestMethod.POST)
	public ResponseEntity<String> beautyTipReplyRegister(@RequestBody Reply reply, HttpSession session)
			throws ClientProtocolException, IOException { // 등록

		int no = (Integer)session.getAttribute("customerNo");
		
		Customer c = new Customer(no);
		reply.setCustomer(c);

		String url = Const.getOriginpath() + "beautyTip/reply/insert";

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity sEntity = new StringEntity(new Gson().toJson(reply), StandardCharsets.UTF_8);
		httpPost.setEntity(sEntity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);
		response.close();

		ResponseEntity<String> entity = null;
		try {
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); // 실패했을
																							// 경우
		}
		return entity;
	}

	// 리스트
	@RequestMapping(value = "beautyTip/all/{beautyTipNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public BeautyTip beautyTipReplyAll(@PathVariable("beautyTipNo") int beautyTipNo)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "beautyTip/find/id/" + beautyTipNo;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<BeautyTip> typeToken = new TypeToken<BeautyTip>() {
		};

		Type type = typeToken.getType();

		// 객체에 Date타입 필드가 있는 경우
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		BeautyTip beautyTip = gsonBuilder.create().fromJson(responseContent, type);

		ResponseEntity<BeautyTip> entity = null;

		// System.out.println(replys);

		try {
			entity = new ResponseEntity<>(beautyTip, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		//
		response.close();
		httpClient.close();

		return beautyTip;
	}

	@RequestMapping(value = "beautyTip/modify/{replyNo}", method = RequestMethod.GET) // 수정
	public ResponseEntity<Reply> beautyTipReplyUpdate(@PathVariable("replyNo") int replyNo)
			throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/reply/find/id/" + replyNo;

		HttpGet httpGet = new HttpGet(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<Reply> typeToken = new TypeToken<Reply>() {
		};

		Type type = typeToken.getType();

		ResponseEntity<Reply> entity = null;

		// 객체에 Date타입 필드가 있는 경우
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());
		Reply reply = gsonBuilder.create().fromJson(responseContent, type);

		try {

			entity = new ResponseEntity<>(reply, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "beautyTip/modify", method = RequestMethod.POST) // 수정
	public ResponseEntity<String> beautyTipReplyUpdatePost(@RequestBody Reply reply) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/reply/modify";

		// System.out.println(reply.toString()+"******");
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity sEntity = new StringEntity(new Gson().toJson(reply), StandardCharsets.UTF_8);
		httpPost.setEntity(sEntity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);
		response.close();

		ResponseEntity<String> entity = null;

		try {

			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
