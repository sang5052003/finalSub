package controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
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
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import controller.utils.Const;
import controller.utils.DateDeserializer;
import controller.utils.HttpResponse;
import domain.BeautyTip;
import domain.BeautyTipCategory;
import domain.BeautyTipPager;
import domain.Customer;
import domain.PageMaker;
import domain.Review;
import domain.SearchPager;

@Controller
@RequestMapping("beautyTip")
public class BeautyTipController {

	@RequestMapping(value = "showDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String beautyTipShowDetail(int beautyTipNo, Model model, HttpSession session)
			throws ClientProtocolException, IOException {

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

		model.addAttribute("beautyTip", beautyTip); // 이안에 이미 매퍼에서 받아온 댓글들이
													// 들어있어야 함
		model.addAttribute("loadPath", Const.getLoadpath()); // 이미지 불러올 경로

		// 로그인에서 받는 것으로 수정해야함!!
		// String loginedId = (String)session.getAttribute("loginedId");
		model.addAttribute("loginedId", "id"); // 현재 id 고정

		//
		response.close();
		httpClient.close();

		return "/beautyTip/detail.jsp";
	}

	@RequestMapping(value = "registForm.do", method = RequestMethod.GET)
	public String beautyTipRegistForm(HttpSession session) {

		// session체크(로그인)

		//
		return "redirect:/beautyTip/registForm.jsp";
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String beautyTipRegist(MultipartHttpServletRequest request) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/insert";

		// 이미지, 제목, 컨텐츠 셋팅..
		BeautyTip beautyTip = upImg2(request);
		// beautyTip.setVideo(this.upVideo(request));

		//
		beautyTip.setCategory(BeautyTipCategory.makeupInformation); // 선택..s
		// beautyTip.setVideo("vvv");

		//
		beautyTip.setCustomer(new Customer(1)); // session에서

		//
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// form(데이터) 집어넣어서 보내기
		// user객체를 json으로..
		StringEntity entity = new StringEntity(new Gson().toJson(beautyTip), Consts.UTF_8); // throw
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json"); // data가
																// json이다(os에
																// noti)

		CloseableHttpResponse response = httpClient.execute(httpPost); // throw

		int responseStatus = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		// System.out.println(responseStatus);

		// true/false

		//
		response.close();
		httpClient.close();

		// // 이전페이지(form jsp)에서 넘어온 값으로 BeautyTipCategory를 지정
		// String category = ;
		// category = "makeupInformation"; // 나중에 jsp완성되면 지울 정보
		return "redirect:/beautyTip/list.do?category=" + beautyTip.getCategory();
	}

	// 파일업로드 cos랑 양립안되서 새로 만듬..
	private BeautyTip upImg2(MultipartHttpServletRequest request) {

		String beautyTipTitle = null;
		String beautyTipContent = null;
		List<String> contentList = new ArrayList<>();
		List<String> contentParams = new ArrayList<>();
		List<String> imgStrList = new ArrayList<>();
		String vStr = "";

		//
		Enumeration<String> paramEnums = request.getParameterNames();
		while (paramEnums.hasMoreElements()) {

			String param = paramEnums.nextElement();
			if (param.equals("beautyTipTitle")) {

				beautyTipTitle = request.getParameter(param);

			} else {
				if (param.startsWith("beautyTipContent")) {
					contentParams.add(param);
				}
			}
		}

		Collections.sort(contentParams);
		for (String s : contentParams) {
			contentList.add(request.getParameter(s));
		}

		//
		MultipartFile file = null;
		Iterator<String> fileNames = request.getFileNames();
		while (fileNames.hasNext()) {

			String fileName = fileNames.next();

			file = request.getFile(fileName);

			// 경로 저장
			if (fileName.equals("vFileName")) {
				vStr = file.getOriginalFilename();
			} else {
				imgStrList.add(file.getOriginalFilename());
			}

			// upload
			try {

				String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			// System.out.println(file.getContentType());
		}

		String imgPath = "";
		for (int i = 0; i < imgStrList.size(); i++) {
			imgPath += imgStrList.get(i) + "§"; // 구분자, ㅁ5
		}
		imgPath = imgPath.substring(0, imgPath.length() - 1);

		// System.out.println(imgPath);

		String vPath = Const.getLoadpath() + vStr;

		// 컨텐츠 구분자 추가(컨텐츠는 거꾸로 추가 되어서 순서 맞추려고 for문 씀)
		beautyTipContent = "";
		for (int i = 0; i < contentList.size(); i++) {
			beautyTipContent += contentList.get(i) + "§"; // 구분자, ㅁ5
		}
		beautyTipContent = beautyTipContent.substring(0, beautyTipContent.length() - 1); // 마지막
																							// 구분자
																							// 삭제

		//
		BeautyTip beautyTip = new BeautyTip();// 0, beautyTipTitle, imgPath,
												// beautyTipContent, "vv", new
												// Customer(1),
												// BeautyTipCategory.makeupInformation,
												// null);
		beautyTip.setBeautyTipNo(0);
		beautyTip.setBeautyTipContent(beautyTipContent);
		beautyTip.setBeautyTipTitle(beautyTipTitle);
		beautyTip.setImage(imgPath);
		beautyTip.setVideo(vPath);

		return beautyTip;
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {

		String savePath = "C:\\Users\\kosta\\workSpace(final)\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\BeautyMateSub\\resources\\img\\save";

		// UUID uid = UUID.randomUUID();

		// String savedName = uid.toString() + "_" + originalName;

		String savedName = originalName;

		File target = new File(savePath, savedName);

		FileCopyUtils.copy(fileData, target);

		return savedName;
	}

	/*
	 * private BeautyTip upImg(HttpServletRequest request) {
	 * 
	 * String beautyTipTitle = null; String beautyTipContent = null;
	 * List<String> contentList = new ArrayList<>(); String imgStr = "";
	 * List<String> imgStrList = new ArrayList<>(); String vStr = "";
	 * 
	 * //String imagePath = "c:\\yorizori"; //String imagePath =
	 * "http://localhost:8080/BeautyMate/resources/img/save";
	 * //C:\\Users\\kosta\\workSpace(final)\\.metadata\\.plugins\\org.eclipse.
	 * wst.server.core\\tmp2\\wtpwebapps\\BeautyMateSub\\resources\\img\\save
	 * //String imagePath =
	 * "C:\\Users\\kosta\\git\\finalSub\\BeautyMateSub\\WebContent\\resources\\img\\save";
	 * 
	 * //이클립스에서 새로고침해야 반영되는 이유 //이클립스가 소스변겨잉 감지 되면 자동으로 톰캣 배포 경로로 소스를 복사(배포) ->
	 * 배포경로에서 소스 실행 //실제 톰캣 배포 경로.. String savePath =
	 * "C:\\Users\\kosta\\workSpace(final)\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\BeautyMateSub\\resources\\img\\save";
	 * int fileSize = 50 * 1024 * 1024; //50mb try { MultipartRequest multi =
	 * new MultipartRequest(request, savePath, fileSize, "utf-8", new
	 * DefaultFileRenamePolicy());
	 * 
	 * 
	 * 
	 * 
	 * Enumeration<Object> fileParams = multi.getFileNames(); while
	 * (fileParams.hasMoreElements()) { String name = (String)
	 * fileParams.nextElement(); String value = multi.getFilesystemName(name);
	 * String contentType = multi.getContentType(name);
	 * 
	 * System.out.println("===이미지 정보==="); System.out.println(contentType);
	 * System.out.println(name); System.out.println(value); //imgFileName0
	 * 
	 * //순서가 ..맨앞에것을 맨뒤로 보내고 컨텐츠처럼 뒤집으면 됨..why?
	 * if(contentType.equals("image/jpeg") || contentType.equals("image/png")){
	 * imgStrList.add(value); }else{ // video/mp4 vStr = value; }
	 * 
	 * }
	 * 
	 * //int contentCount = imgStrList.size(); //지정된 이미지 갯수로 컨텐츠 갯수를 알 수 있다. //
	 * Enumeration<Object> params = multi.getParameterNames();
	 * 
	 * while (params.hasMoreElements()) { String name = (String)
	 * params.nextElement(); if (name.equals("beautyTipTitle")) { beautyTipTitle
	 * = multi.getParameter(name); } else { //타이틀이 아니면 모두 내용 beautyTipContent =
	 * multi.getParameter(name); contentList.add(beautyTipContent); } else if
	 * (name.equals("beautyTipContent")) { beautyTipContent =
	 * multi.getParameter(name); } }
	 * 
	 * } catch (IOException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * //불러올 경로(db저장 경로) //String loadPath =
	 * "http://localhost:8080/BeautyMate/resources/img/save/"; //불러오는 곳에..
	 * //파일이름붙이기..(중복된 파일이름의 경우 자동으로 1, 2, 3..의 숫자를 붙여준다.
	 * 
	 * String imgPath = imgStrList.get(0) + "§"; //첫번째만 정상으로 넣고 나머지는 뒤집어서..
	 * for(int i = imgStrList.size() - 1; i > 0; i--){ imgPath +=
	 * imgStrList.get(i) + "§"; //구분자, ㅁ5 } imgPath = imgPath.substring(0,
	 * imgPath.length() - 1);
	 * 
	 * //System.out.println(imgPath);
	 * 
	 * String vPath = Const.getLoadpath() + vStr;
	 * 
	 * //컨텐츠 구분자 추가(컨텐츠는 거꾸로 추가 되어서 순서 맞추려고 for문 씀) beautyTipContent = "";
	 * for(int i = contentList.size() - 1; i >= 0 ; i--){ beautyTipContent +=
	 * contentList.get(i) + "§"; //구분자, ㅁ5 } beautyTipContent =
	 * beautyTipContent.substring(0, beautyTipContent.length() - 1); //마지막 구분자
	 * 삭제
	 * 
	 * // BeautyTip beautyTip = new BeautyTip();//0, beautyTipTitle, imgPath,
	 * beautyTipContent, "vv", new Customer(1),
	 * BeautyTipCategory.makeupInformation, null); beautyTip.setBeautyTipNo(0);
	 * beautyTip.setBeautyTipContent(beautyTipContent);
	 * beautyTip.setBeautyTipTitle(beautyTipTitle); beautyTip.setImage(imgPath);
	 * beautyTip.setVideo(vPath);
	 * 
	 * return beautyTip; }
	 * 
	 * private String upVideo(HttpServletRequest request) {
	 * 
	 * String video = "";
	 * 
	 * //이클립스에서 새로고침해야 반영되는 이유 //이클립스가 소스변겨잉 감지 되면 자동으로 톰캣 배포 경로로 소스를 복사(배포) ->
	 * 배포경로에서 소스 실행 //실제 톰캣 배포 경로.. String vSavePath =
	 * "C:\\Users\\kosta\\workSpace(final)\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\BeautyMateSub\\resources\\video";
	 * int vFileSize = 10 * 1024 * 1024; //10mb try { MultipartRequest multi =
	 * new MultipartRequest(request, vSavePath, vFileSize, "utf-8", new
	 * DefaultFileRenamePolicy());
	 * 
	 * Enumeration<Object> fileParams = multi.getFileNames(); while
	 * (fileParams.hasMoreElements()) { String name = (String)
	 * fileParams.nextElement(); String value = multi.getFilesystemName(name);
	 * video = value; //String contentType = multi.getContentType(name);
	 * 
	 * }
	 * 
	 * } catch (IOException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * //불러올 경로(db저장 경로) String vPath =
	 * "http://localhost:8080/BeautyMate/resources/video/"; //파일이름붙이기..(중복된
	 * 파일이름의 경우 자동으로 1, 2, 3..의 숫자를 붙여준다. vPath += video;
	 * 
	 * // return vPath; }
	 */

	// 페이징 리스트
	@RequestMapping(value = "listpage.do", method = RequestMethod.GET)
	public String showListPage(@ModelAttribute("pager") BeautyTipPager pager, Model model, BeautyTipCategory category)
			throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/listpage/pagStart/" + pager.getPagStart() + "/pagEnd/"
				+ pager.getPagEnd() + "/category/" + category;

		System.out.println(url);
		System.out.println(pager.getPagStart());
		System.out.println(pager.getPagEnd());
		System.out.println(pager);
		System.out.println();

		List<BeautyTip> list = jsonByList(url);
		PageMaker pageMaker = new PageMaker();
		pager.setCategory(category);
		pageMaker.setPager(pager);
		if (list.size() == 0) { //0
			pageMaker.setTotalCount(0);
		} else {
			pageMaker.setTotalCount(list.get(0).getListCount()); // 전체 개수를
		}
		// 온다.
		// index, size 0 일시 예외처리

		System.out.println("===showPage===");
		System.out.println(pageMaker);
		
		model.addAttribute("pageMaker", pageMaker);

		model.addAttribute("beautyTipList", list);
		model.addAttribute("category", category); // 메이크업만..페이징?
		model.addAttribute("loginedId", "id"); // 겟세션 아이디
		model.addAttribute("loadPath", Const.getLoadpath()); // 이미지 불러올 경로

		return "/beautyTip/beautyTipList.jsp";
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

		model.addAttribute("beautyTipList", beautyTipList);
		model.addAttribute("category", category.toString());
		model.addAttribute("loginedId", "id"); // 겟세션 아이디
		model.addAttribute("loadPath", Const.getLoadpath()); // 이미지 불러올 경로

		response.close();
		httpClient.close();

		return "/beautyTip/beautyTipList.jsp";
	}

	// 수정
	@RequestMapping(value = "editForm.do", method = RequestMethod.GET)
	public String beautyTipEditForm(int beautyTipNo, HttpSession session, Model model)
			throws ClientProtocolException, IOException {

		// session체크(로그인)

		//
		BeautyTip beautyTip = this.getSrcForEdit(beautyTipNo);

		model.addAttribute("beautyTip", beautyTip);
		model.addAttribute("loadPath", Const.getLoadpath()); // 이미지 불러올 경로

		//
		return "/beautyTip/editForm.jsp"; // 디스패쳐방식으로 수정할 beautyTip을 들고 감
	}

	private BeautyTip getSrcForEdit(int beautyTipNo) throws ClientProtocolException, IOException {

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

		//
		response.close();
		httpClient.close();

		return beautyTip;
	}

	// form태그로 객체 가져오는 것...test필요
	@RequestMapping(value = "edit.do", method = RequestMethod.POST)
	public String beautyTipEdit(MultipartHttpServletRequest request) throws ClientProtocolException, IOException {

		String url = Const.getOriginpath() + "beautyTip/modify";

		// 이미지, 제목, 컨텐츠 셋팅..
		BeautyTip beautyTip = upImg2(request);

		int beautyTipNo = Integer.parseInt(request.getParameter("beautyTipNo"));
		beautyTip.setBeautyTipNo(beautyTipNo);

		//
		beautyTip.setCategory(BeautyTipCategory.makeupInformation); // 선택..s

		//
		HttpPost httpPost = new HttpPost(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();

		// form(데이터) 집어넣어서 보내기
		// user객체를 json으로..
		StringEntity entity = new StringEntity(new Gson().toJson(beautyTip), Consts.UTF_8); // throw
		httpPost.setEntity(entity);
		httpPost.setHeader("Content-type", "application/json"); // data가
																// json이다(os에
																// noti)

		CloseableHttpResponse response = httpClient.execute(httpPost); // throw

		int responseStatus = HttpResponse.getInstance().getResponseStatus(response);
		String responseContent = HttpResponse.getInstance().getResponseContent(response);
		// System.out.println(responseStatus);

		// true/false

		//
		response.close();
		httpClient.close();

		// req -> 이전페이지(form jsp)에서 넘어온 값으로 BeautyTipCategory를 지정
		String category = beautyTip.getCategory().toString();

		// 디테일로?
		return "redirect:/beautyTip/list.do?category=" + BeautyTipCategory.valueOf(category);
	}

	// 삭제
	@RequestMapping(value = "clear.do", method = RequestMethod.GET)
	public String beautyTipClear(HttpServletRequest req) throws ClientProtocolException, IOException {

		// remove
		int removeNo = Integer.parseInt(req.getParameter("beautyTipNo"));
		String url = Const.getOriginpath() + "beautyTip/remove/" + removeNo;// get

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

		response.close();
		httpClient.close();

		// req -> 이전페이지(form jsp)에서 넘어온 값으로 BeautyTipCategory를 지정
		String category = req.getParameter("category");
		// category = "makeupInformation"; // 나중에 jsp완성되면 지울 정보
		return "redirect:/beautyTip/list.do?category=" + BeautyTipCategory.valueOf(category);
	}

	// 작성자 검색
	@RequestMapping(value = "showByAuthor.do", method = RequestMethod.GET)
	public String showByAuthor(HttpServletRequest req, Model model) throws ClientProtocolException, IOException {

		// findByAuthor
		String authorId = req.getParameter("authorId");
		String category = req.getParameter("category");
		String url = Const.getOriginpath() + "beautyTip/find/author/" + authorId;// get

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

		model.addAttribute("beautyTipList", beautyTipList);
		model.addAttribute("category", category.toString());

		response.close();
		httpClient.close();

		return "/beautyTip/beautyTipList.jsp";
		// return "/beautyTip/list.jsp";
	}

	// title 검색
	@RequestMapping(value = "showByTitle.do", method = RequestMethod.GET)
	public String showByTitle(HttpServletRequest req, Model model) throws ClientProtocolException, IOException {

		// findByTitle
		String title = req.getParameter("title"); // 검색어
		String category = req.getParameter("category");
		String url = Const.getOriginpath() + "beautyTip/find/title/" + title;// get

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

		model.addAttribute("beautyTipList", beautyTipList);
		model.addAttribute("category", category.toString());

		response.close();
		httpClient.close();

		return "/beautyTip/beautyTipList.jsp";
		/* return "/beautyTip/list.jsp"; */
	}

	//
	private List<BeautyTip> jsonByList(String url) throws ClientProtocolException, IOException {

		HttpGet httpGet = new HttpGet(url);
		CloseableHttpClient httpClient = HttpClients.createDefault();
		CloseableHttpResponse response = httpClient.execute(httpGet); // url 날라감

		String responseContent = HttpResponse.getInstance().getResponseContent(response);

		TypeToken<List<BeautyTip>> typeToken = new TypeToken<List<BeautyTip>>() {
		};
		Type type = typeToken.getType();

		// 객체에 Date타입 필드가 있는 경우
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.registerTypeAdapter(Date.class, new DateDeserializer());

		System.out.println(responseContent);
		
		List<BeautyTip> beautyTips = gsonBuilder.create().fromJson(responseContent, type);

		/*for (BeautyTip b : beautyTips) {
			System.out.println(b.toString());
		}*/

		response.close();

		return beautyTips;
	}
}
