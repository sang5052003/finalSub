<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-12">
		<h1>추천 화장품</h1>
		<table class="table table-hover table-condensed">
			<colgroup>
				<col width="80" align="center">
				<col width="*">
				<col width="70">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>용량</th>
					<th>가격</th>
					<th>회사</th>
					<th>분류</th>
					<th>성분</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cosmetics}" var="cosmetics" varStatus="sts">
					<tr>
						<td class="ranking">${sts.count}</td>
						<td>
							<table>
								<tr>
									<td> ${cosmetics.cosmeticNo }</td>
								</tr>
								<tr>
									<td>${cosmetics.cosmeticName }</td>
								</tr>
								<tr>
									<td >${cosmetics.volume }</td>
								</tr>
								<tr>
									<td> ${cosmetics.cost }</td>
								</tr>
								<tr><td rowspan="2"><img class="imgAlbum"
									src="${cosmetics.img }"></td>
									</tr>
								<tr><td> ${cosmetics.brand }</td></tr>
								<tr><td> ${cosmetics.category }</td></tr>
								<tr><td> ${cosmetics.ingredients }</td></tr>
							</table>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>