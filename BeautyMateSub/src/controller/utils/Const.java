package controller.utils;

public class Const {

	private static final String adminId = "admin";
	private static final String adminPw = "1234";
	
	private static final String originPath = "http://localhost:8888/rest/";
	
	private static final String loadPath = "http://localhost:8080/BeautyMate/resources/img/save/"; //불러오는 곳에..

	public static String getAdminid() {
		return adminId;
	}

	public static String getAdminpw() {
		return adminPw;
	}

	public static String getOriginpath() {
		return originPath;
	}

	public static String getLoadpath() {
		return loadPath;
	}
}
