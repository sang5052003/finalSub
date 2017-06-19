<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

	<p>beautyTip list Page
	<div class="container">
		<div class="row">
			<div class="row form-btn">
				<input type="text" name="authorId" placeholder="작성자">
				<button type="button" name="authorBtn" class="btn btn-default">작성자
					검색</button>
			</div>
			<div class="row form-btn">
				<input type="text" name="title" placeholder="제목">
				<button type="button" name="titleBtn" class="btn btn-default">제목
					검색</button>
			</div>
			<div id="beautyTipList">
				<c:forEach var="beautyTip" items="${beautyTipList }">
					<table class="table" style="font-size: 13px; padding: 20px;">
						<tr>
							<td><strong>${beautyTip.beautyTipNo}</strong></td>
							<td class="text-right"><a
								href="${pageContext.request.contextPath}/beautyTip/showDetail.do?beautyTipNo=${beautyTip.beautyTipNo }"
								class="list-group-item hidden-xs">${beautyTip.beautyTipTitle}</a>
							</td>
							<td colspan="2">
								<p class="txt">${beautyTip.beautyTipContent}</p>
							</td>
							<td colspan="2">
								<button type="button" onclick="javascript:delFunc(${beautyTip.beautyTipNo })" class="btn btn-default">삭제</button>
							</td>
						</tr>
					</table>
				</c:forEach>
			</div>
			<div class="row form-btn">
				<a href="${pageContext.request.contextPath}/beautyTip/registForm.do">
					<button type="button" class="btn btn-default">등록</button>
				</a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
		
	
		var delFunc;
		$(document).ready(function() {

			delFunc = function(beautyTipNo){

				/* "beautyTip/remove/" + removeNo */
				/* /remove/ajax/{id}&{category} */
				$.ajax({
					url:"http://localhost:8888/rest/beautyTip/remove/ajax/" + beautyTipNo
					,type:"get"
					,dataType:"json"
					//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
					,success:displayList
					,error:errorCallback
				});
			}
			
			$(":button[name=authorBtn]").click(function(){
				var authorId = $(":input[name=authorId]").val();
				/* location.href="${pageContext.request.contextPath}/beautyTip/showByAuthor.do?authorId=" + authorId + "&category=${category }"; */
				
				//검색값 없는 경우
				if(authorId == ""){
					authorId = "admin";
				}
				
				/* $.ajaxSetup({
					crossDomain: true,
					beforeSend: function(xhr) {
					xhr.setRequestHeader("Application-Client-ID", "hue");
					xhr.setRequestHeader("Application-Uniqid", "12415322");
					}
					}); */

					$.ajax({
						url:"http://localhost:8888/rest/beautyTip/find/author/" + authorId
						,type:"get"
						,dataType:"json"
						//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
						,success:displayList
						,error:errorCallback
					});
					
				
				/* $.ajax({
					url:"http://localhost:8888/rest/beautyTip/find/author.ajax"
					,type:"get"
					,dataType:"json"
					,data:{customerId:authorId}
					//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
					,success:displayList
					,error:errorCallback
				}); */
				
			});
			
			$(":button[name=titleBtn]").click(function(){
				var title = $(":input[name=title]").val();
				
				//"beautyTip/remove/" + removeNo
				
				//location.href="${pageContext.request.contextPath}/beautyTip/showByTitle.do?title=" + title + "&category=${category }";
				if(title == ""){
					title = "§"; //§ -> ㅁ5
				}
				
				$.ajax({
					url:"http://localhost:8888/rest/beautyTip/find/title/" + title
					,type:"get"
					,dataType:"json"
					//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
					,success:displayList
					,error:errorCallback
				});
			});
			
			
			var displayList = function(resultData) {
				var listHtml = "";
				
				$.each(resultData, function(index, beautyTip){
					listHtml += '<table class="table" style="font-size:13px; padding:20px;">';
					listHtml += '<tr>';
					listHtml += '<td><strong>' + beautyTip.beautyTipNo + '</strong></td>';
					listHtml += '<td class="text-right">'+
					'<a href="${pageContext.request.contextPath}/beautyTip/showDetail.do?beautyTipNo=' + beautyTip.beautyTipNo + '"' +
					' class="list-group-item hidden-xs">'+ beautyTip.beautyTipTitle + '</a>';
					listHtml += '<td>';
					listHtml += '<td colspan="2">';
					listHtml += '<p class="txt">' + beautyTip.beautyTipContent + '</p>';
					listHtml += '<td>';
					
					listHtml +=  '<td colspan="2">' + 
						'<button type="button" onclick="javascript:delFunc(' + beautyTip.beautyTipNo + ');"' + 'class="btn btn-default">삭제</button>';
						
					listHtml += '<td>';
					listHtml += '</tr></table>';	
				});
				
				//div태그에다가 넣는 방식.. /div가 필요없다
				$("#beautyTipList").empty();
				$("#beautyTipList").append(listHtml);
				/* $("#comment").val(""); */
			};
			
			var errorCallback = function() {
				alert("수행중 오류가 발생했습니다.");
			};
			
		});/* end ready */
	</script>

</body>
</html>