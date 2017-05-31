package controller;

import java.io.IOException;
import java.lang.reflect.Type;

import javax.servlet.http.HttpServletRequest;

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
import domain.Customer;
import domain.Reply;

@Controller
@RequestMapping("reply")
public class ReplyController {

	// 리뷰 댓글 추가
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String replyRegist(Reply reply) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "reply/register";
		int result = 0;
		result = jsonByObject(url, reply);

		if (result == 1) { // 성공
			System.out.println(result);
		}

		return "redirect:/review/detail.do?" + reply.getPostNo();
	}

	// 리뷰 댓글 수정
	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String replyModifyForm(Reply reply) {
		// 수정 form 띄우기
		return null;
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String replyModify(Reply reply) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "reply/modify";
		int result = 0;
		result = jsonByObject(url, reply);

		if (result == 1) { // 성공
			System.out.println(result);
		}

		return "redirect:/review/detail.do?" + reply.getPostNo();
	}

	// 리뷰 댓글 삭제
	@RequestMapping(value = "remove.do", method = RequestMethod.GET)
	public String replyRemove(Reply reply) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "reply/remove/replyNo/" + reply.getReplyNo();
		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<Integer> typeToken = new TypeToken<Integer>() {
		};

		Type type = typeToken.getType();

		int result = new Gson().fromJson(responseContent, type);

		if (result == 1) {// 성공
			System.out.println(result);
		}

		return "redirect:/review/detail.do?" + reply.getPostNo();

	}

	private int jsonByObject(String url, Reply reply) throws ClientProtocolException, IOException {

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		StringEntity entity = new StringEntity(new Gson().toJson(reply));
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<Integer> typeToken = new TypeToken<Integer>() {
		};

		Type type = typeToken.getType();
		int result = new Gson().fromJson(responseContent, type);

		response.close();

		return result;

	}

	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//// BeautyTip 댓글
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping(value = "beautyTip/regist.do", method = RequestMethod.POST)
	public String beautyTipReplyRegist(Reply reply) throws ClientProtocolException, IOException {

		// session에서 받아서 reply에 customer를 생성하고 넣어 줌?
		// 아니면 넘어올때 객체인 customer에 id를 넣을 수 잇는지..
		reply.setCustomer(new Customer(1)); // 세션 로그인 아이디?, 로그인 번호?

		String url = Const.getOriginpath() + "beautyTip/reply/insert";
		String result = jsonByObjectWithStr(url, reply);

		System.out.println("beautyTipReplyRegist==="); 
		System.out.println(result); // true/false

		return "redirect:/beautyTip/showDetail.do?beautyTipNo=" + reply.getPostNo();
	}

	// beautyTip 댓글 수정
	@RequestMapping(value = "beautyTip/editForm.do", method = RequestMethod.GET)
	public String beautyTipReplyModifyForm(Reply reply, Model model) {
		// 수정 form 띄우기

		model.addAttribute("reply", reply);

		// 디스패쳐방식
		return "/beautyTip/reply/editForm.jsp"; // 수정form있는 곳
	}

	@RequestMapping(value = "beautyTip/edit.do", method = RequestMethod.POST)
	public String beautyTipReplyModify(Reply reply) throws ClientProtocolException, IOException {

		reply.setCustomer(new Customer(1)); // 세션 로그인 아이디?, 로그인 번호?

		String url = Const.getOriginpath() + "beautyTip/reply/modify";
		String result = jsonByObjectWithStr(url, reply);

		System.out.println(result);

		return "redirect:/beautyTip/showDetail.do?beautyTipNo=" + reply.getPostNo();
	}

	// beautyTip 댓글 삭제
	@RequestMapping(value = "beautyTip/clear.do", method = RequestMethod.GET)
	public String beautyTipReplyRemove(Reply reply) throws ClientProtocolException, IOException {
		String url = Const.getOriginpath() + "beautyTip/reply/remove/" + reply.getReplyNo();
		HttpGet httpGet = new HttpGet(url);

		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		System.out.println(responseContent);

		return "redirect:/beautyTip/showDetail.do?beautyTipNo=" + reply.getPostNo();
	}

	private String jsonByObjectWithStr(String url, Reply reply) throws ClientProtocolException, IOException {

		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		System.out.println("jsonByObjectWithStr");
		System.out.println(reply);

		StringEntity entity = new StringEntity(new Gson().toJson(reply));
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json");
		CloseableHttpResponse response = httpClient.execute(httpPost);

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		// TypeToken<Integer> typeToken = new TypeToken<Integer>() {
		// };
		//
		// Type type = typeToken.getType();
		// int result = new Gson().fromJson(responseContent, type);

		response.close();

		return responseContent;
	}
	
	
}
