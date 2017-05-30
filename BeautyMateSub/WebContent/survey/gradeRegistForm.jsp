<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.star_rating {
	font-size: 0;
	letter-spacing: -4px;
}

.star_rating a {
	font-size: 22px;
	letter-spacing: 0;
	display: inline-block;
	margin-left: 5px;
	color: #ccc;
	text-decoration: none;
}

.star_rating a:first-child {
	margin-left: 0;
}

.star_rating a.on {
	color: #777;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
$( ".star_rating a" ).click(function() {
    $(this).parent().children("a").removeClass("on");
    $(this).addClass("on").prevAll("a").addClass("on");
    return false;
});
});
</script>

<title>화장품 평가하기</title>
</head>
<body>
	<c:forEach items="${cosmetics}" var="cosmetics" varStatus="sts">
		<form action="gradeRegist.do" method="post">
			<p class="star_rating" name="grade" value="">
				<a href="#" class="on">★</a> <a href="#" class="on">★</a>
				<a href="#" class="on">★</a> <a href="#">★</a> <a href="#">★</a>
			</p>
			<input type="hidden" name="${cosmetics.cosmeticNo }"
				name="${cosmetics.cosmeticNo }"> ${cosmetics.cosmeticName }
			<button type="submit">등록</button>

		</form>
	</c:forEach>
</body>

</html>

