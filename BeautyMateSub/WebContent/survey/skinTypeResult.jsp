<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>피부 타입 결과</title>
</head>
<body>
피부타입 : ${skinType.baumanType }
<br><br>
추천성분 : ${skinType.recommendedIngredient }
<br><br>
비추천 성분 : ${skinType.bannedIngredient }
<br><br>
추천 습관 : ${skinType.habit }
<br><br>
<a href="${ctx }/survey/gradeRegistForm.do">화장품 추천 받기</a>
<br><br>
</body>
</html>