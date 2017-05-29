<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>beautyTip list Page
	<div class="container">
		<div class="row">
			<c:forEach var="beautyTip" items="${beautyTipList }">
				<table class="table" style="font-size: 13px; padding: 20px;">
					<tr>
						<td><strong>${beautyTip.beautyTipNo}</strong></td>
						<td class="text-right">${comment.regDate}<a
							href="${pageContext.request.contextPath}/beautyTip/showDetail.do?beautyTipNo=${beautyTip.beautyTipNo }"
							class="list-group-item hidden-xs">${beautyTip.beautyTipTitle}</a>
						</td>
						<td colspan="2">
							<p class="txt">${beautyTip.beautyTipContent}</p>
						</td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>

</body>
</html>