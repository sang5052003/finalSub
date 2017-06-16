package controller.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;

public class HttpResponse {

	public static HttpResponse instance;

	private HttpResponse() {}

	public static HttpResponse getInstance() {

		if (instance == null)
			instance = new HttpResponse();

		return instance;
	}

	// response 상태 받기
	public int getResponseStatus(CloseableHttpResponse response) {

		// http상태 -> 404, 500, ...
		return response.getStatusLine().getStatusCode();
	}

	// 리턴값은 json객체를 string으로.. -> gson으로 string을 객체로 바꿔줘서 쓸거임
	// CloseableHttpResponse response를 os에서 받아오고
	// response에는 os의 ip등.. 이 들어있음..
	// os와 통신해서 데이터(json) 받아옴 -> stream으로
	public String getResponseContent(CloseableHttpResponse response) {

		HttpEntity httpEntity = response.getEntity();
		InputStream is = null;
		StringBuilder contentBuilder = new StringBuilder();

		try {
			is = httpEntity.getContent();

			byte[] contentBytes = new byte[1024 * 6];

			while (true) {
				int readCount = is.read(contentBytes);
				if (readCount == -1) {
					break;
				}

				contentBuilder.append(new String(contentBytes, 0, readCount));
			}

		} catch (UnsupportedOperationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {

				if (is != null)
					is.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return contentBuilder.toString();
	}
}
