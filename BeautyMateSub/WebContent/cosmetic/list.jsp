<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="registerForm.do" >
	<button type="submit">화장품 등록</button>
	</form>

	<form method="get" action="showByName.do" >
		<input name="cosmeticTitle" type="text" placeholder="화장품명을 입력하세요." value="">
		<input class="btn btn-xs btn-default" type="submit" value="검색">
	</form>
	
	<form method="get" action="showByCategory.do" >
	<select class="form-control" name="cosmeticCategory">
		<option value="All">전체</option>
		<option value="essence">에센스</option>
		<option value="mist">미스트</option>
		<option value="lotion">로션</option>
		<option value="faceOil">페이스오일</option>
		<option value="skin">스킨</option>
		<option value="cream">크림</option>
	</select>
	<input class="btn btn-xs btn-default" type="submit" value="검색">
	</form>
	
	<form method="get" action="showByBrand.do" >
		<input name="brand" type="text" placeholder="브랜드명을 입력하세요." value="">
		<input class="btn btn-xs btn-default" type="submit" value="검색">
	</form>
	
	<table class="table table-hover table-condensed">
		<colgroup>
			<col width="80" align="center">
			<col width="*">
			<col width="70">
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>브랜드</th>
				<th>화장품명</th>
				<th>카테고리</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cosmetics}" var="cosmetic" varStatus="sts">
				<tr>
					<td>${sts.count}</td>
					<td>${cosmetic.brand}</td>
					<td><a href="showByNo.do?cosmeticNo=${cosmetic.cosmeticNo}">${cosmetic.cosmeticName}</a></td>
					<td>${cosmetic.category}</td>
					<td><button type="submit" onclick="location.href='modifyForm.do?cosmeticNo=${cosmetic.cosmeticNo}'">수정</button></td>
					<td><button type="submit" onclick="location.href='remove.do?cosmeticNo=${cosmetic.cosmeticNo}'">삭제</button></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
</html>