<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<c:set var="ctxx" value="${pageContext.request.contextPath }/resources/temp" />
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<head>
<!-- Bootstrap 3.3.4 -->
<link href="${ctxx}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="${ctxx}/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="${ctxx}/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />
</head>
<script src="${ctxx}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->


		<div class="col-md-12">
			<!-- general form elements -->
			<div class='box'>
				<div class="box-header with-border">
					<h3 class="box-title">Board List</h3>
				</div>


				<div class='box-body'>

					<select name="searchType">
						<option value="n"
							<c:out value="${pager.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${pager.searchType eq 't'?'selected':''}"/>>
							Title</option>
						<option value="c"
							<c:out value="${pager.searchType eq 'c'?'selected':''}"/>>
							Content</option>
						<!-- 						<option value="w" -->
						<%-- 							<c:out value="${pager.searchType eq 'w'?'selected':''}"/>> --%>
						<!-- 							Writer</option> -->
						<!-- 						<option value="tc" -->
						<%-- 							<c:out value="${pager.searchType eq 'tc'?'selected':''}"/>> --%>
						<!-- 							Title OR Content</option> -->
						<!-- 						<option value="cw" -->
						<%-- 							<c:out value="${pager.searchType eq 'cw'?'selected':''}"/>> --%>
						<!-- 							Content OR Writer</option> -->
						<!-- 						<option value="tcw" -->
						<%-- 							<c:out value="${pager.searchType eq 'tcw'?'selected':''}"/>> --%>
						<!-- 							Title OR Content OR Writer</option> -->
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${pager.keyword }'>
					<button id='searchBtn'>Search</button>
					<button id='newBtn'>New Board</button>

				</div>
			</div>


			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST PAGING</h3>
				</div>
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px">VIEWCNT</th>
						</tr>

						<c:forEach items="${reviewList}" var="review">
<%-- ${pageMaker.makeSearch(pageMaker.pager.page) } --%>
							<tr>
								<td>${review.reviewNo}</td>
								<td><a
									href='${ctx}/review/detail.do?reviewNo=${review.reviewNo}'>
										${review.reviewTitle} </a></td>
								<td>${review.customer.id}</td>
								<td><span class="badge bg-red">**</span></td>
							</tr>

						</c:forEach>

					</table>
				</div>
				<!-- /.box-body -->


				<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<c:choose>
									<c:when test="${pager.keyword != null }">
										<li><a
											href="listsearch.do${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
									</c:when>
									<c:otherwise>
										<li><a
											href="listpage.do${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
									</c:otherwise>
								</c:choose>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.pager.page == idx?'class =active':''}"/>>
									<c:choose>
										<c:when test="${pager.keyword != null }">
											<a href="listsearch.do${pageMaker.makeSearch(idx)}">${idx}</a>
										</c:when>
										<c:otherwise>
											<a href="listpage.do${pageMaker.makeSearch(idx)}">${idx}</a>
										</c:otherwise>
									</c:choose>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><c:choose>
										<c:when test="${pager.keyword != null }">
											<li><a
												href="listsearch.do${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
										</c:when>
										<c:otherwise>
											<li><a
												href="listpage.do${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
										</c:otherwise>
									</c:choose>
							</c:if>

						</ul>
					</div>

				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->








<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "listsearch.do"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register.do";

				});

			});
</script>


<!-- Bootstrap 3.3.2 JS -->
<script src="${ctxx}/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- FastClick -->
<script src='${ctxx}/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script src="${ctxx}/dist/js/app.min.js" type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script src="${ctxx}/dist/js/demo.js" type="text/javascript"></script>

