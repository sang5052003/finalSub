package controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.List;

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
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.HttpResponse;
import domain.Customer;
import domain.Reply;

@RestController
@RequestMapping("/replies")
public class TestController {

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody Reply reply) throws ClientProtocolException, IOException { // 등록
		
		System.out.println("ss");
		Customer c = new Customer();
		c.setCustomerNo(1);
		reply.setCustomer(c);
//		reply.setPostNo(12);
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
	public ResponseEntity<List<Reply>> list(@PathVariable("reviewNo") int reviewNo)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "reply/list/reviewNo/" + reviewNo;

		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<List<Reply>> typeToken = new TypeToken<List<Reply>>() {
		};

		Type type = typeToken.getType();

		ResponseEntity<List<Reply>> entity = null;

		List<Reply> reply = new Gson().fromJson(responseContent, type);
		try {
			entity = new ResponseEntity<>(reply, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "/modify/{replyNo}", method = RequestMethod.GET) // 수정
	public ResponseEntity<Reply> update(@PathVariable("reviewNo") int reviewNo, @RequestBody Reply reply)
			throws ClientProtocolException, IOException {

		reply.setPostNo(reviewNo);
		ResponseEntity<Reply> entity = null;

		try {
			reply.setPostNo(reviewNo);

			entity = new ResponseEntity<>(reply, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST) // 수정
	public ResponseEntity<String> updatePost(@PathVariable("reviewNo") int reviewNo, @RequestBody Reply reply)
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

	@RequestMapping(value = "remove/{replyNo}", method = RequestMethod.GET) // 삭제
	public ResponseEntity<String> remove(@PathVariable("replyNo") int replyNo)
			throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "reply/remove/replyNo/" + replyNo;

		HttpDelete httpDel = new HttpDelete(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpDel);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		ResponseEntity<String> entity = null;
		try {
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
