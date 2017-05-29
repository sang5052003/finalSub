<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="register.do" >
	
	카테고리 : <select class="form-control" name="category">
		<option value="" selected>카데고리를 선택해주세요</option>
		<option value="essence">에센스</option>
		<option value="mist">미스트</option>
		<option value="lotion">로션</option>
		<option value="faceOil">페이스오일</option>
		<option value="skin">스킨</option>
		<option value="cream">크림</option>
	</select><br>
	
		브랜드 :  <input name="brand" type="text" value=""><br>
		화장품명 : <input name="cosmeticName" type="text" value=""><br>
		용량 : <input name="volume" type="text" value=""><br>
		가격 : <input name="cost" type="text" value=""><br>
		이미지 주소 : <input name="img" type="text" value=""><br>
		성분 : <textarea name="ingredients" rows="13" cols="50"></textarea>
		
		<input class="btn btn-xs btn-default" type="submit" value="등록">
	</form>

</body>
</html>
