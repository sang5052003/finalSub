<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>



<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
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
<link
	href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link
	href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />

<!-- Bootstrap 3.3.2 JS -->
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- FastClick -->
<script
	src='${pageContext.request.contextPath}/resources/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script
	src="${pageContext.request.contextPath}/resources/dist/js/app.min.js"
	type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script
	src="${pageContext.request.contextPath}/resources/dist/js/demo.js"
	type="text/javascript"></script>


<script
	src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
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
						<option value="w"
							<c:out value="${pager.searchType eq 'w'?'selected':''}"/>>
							Writer</option>
						<option value="tc"
							<c:out value="${pager.searchType eq 'tc'?'selected':''}"/>>
							Title OR Content</option>
						<option value="cw"
							<c:out value="${pager.searchType eq 'cw'?'selected':''}"/>>
							Content OR Writer</option>
						<option value="tcw"
							<c:out value="${pager.searchType eq 'tcw'?'selected':''}"/>>
							Title OR Content OR Writer</option>
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

							<tr>
								<td>${review.reviewNo}</td>
<!-- 								<td><a -->
<%-- 									href='/review/readPage${review.pm.makeSearch(pageMaker.pager.page) }&bno=${boardVO.bno}'> --%>
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

							<c:if test="${reviewList.get(0).pm.prev}">
<!-- 								<li><a -->
<%-- 									href="list${reviewList.get(0).pm.makeSearch(reviewList.get(0).pm.startPage - 1) }"> --%>
									&laquo;</a></li>
							</c:if>

							<c:forEach begin="${reviewList.get(0).pm.startPage }"
								end="${reviewList.get(0).pm.endPage }" var="idx">
								<li
									<c:out value="${reviewList.get(0).pm.pager.page == idx?'class =active':''}"/>>
<%-- 									<a href="list${reviewList.get(0).pm.makeSearch(idx)}">${idx}</a> --%>
								</li>
							</c:forEach>

							<c:if test="${reviewList.get(0).pm.next && reviewList.get(0).pm.endPage > 0}">
<!-- 								<li><a -->
<%-- 									href="list${reviewList.get(0).pm.makeSearch(reviewList.get(0).pm.endPage +1) }">&raquo;</a></li> --%>
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

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});

			});
</script>

