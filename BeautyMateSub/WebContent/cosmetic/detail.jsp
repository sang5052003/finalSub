<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table class="table table-hover table-condensed">
		<colgroup>
			<col width="80" align="center">
			<col width="*">
			<col width="70">
		</colgroup>
		<thead>
			<tr>
				<th>브랜드</th>
				<th>화장품명</th>
				<th>카테고리</th>
				<th>용량</th>
				<th>가격</th>
				<th>사진</th>
				<th>성분</th>
				<th>평점</th>
			</tr>
		</thead>
		<tbody>

				<tr>
					<td>${cosmetic.brand}</td>
					<td><a href="showByNo.do?cosmeticNo=${cosmetic.cosmeticNo}">${cosmetic.cosmeticName}</a></td>
					<td>${cosmetic.category}</td>
					<td>${cosmetic.volume}</td>
					<td>${cosmetic.cost}</td>
					<td>${cosmetic.img}</td>
					<td>${cosmetic.ingredients}</td>
					<td>${cosmetic.averageGrade}</td>
				</tr>
		

		</tbody>
	</table>
	




</body>
</html>