<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath }/resources/temp" />
<link
	href="${ctx}/bootstrap/css/bootstrap.min.css"
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
	href="${ctx}/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link
	href="${ctx}/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />

<!-- Bootstrap 3.3.2 JS -->
<script
	src="${ctx}/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- FastClick -->
<script
	src='${ctx}/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script
	src="${ctx}/dist/js/app.min.js"
	type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script
	src="${ctx}/dist/js/demo.js"
	type="text/javascript"></script>


<script
	src="${ctx}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">MODIFY BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modify.do" method="post">

					<input type='hidden' name='page' value="${pager.page}"> <input
						type='hidden' name='perPageNum' value="${pager.perPageNum}">
					<input type='hidden' name='searchType' value="${pager.searchType}">
					<input type='hidden' name='keyword' value="${pager.keyword}">

					<div class="box-body">

						<div class="form-group">
							<label for="exampleInputEmail1">BNO</label> <input type="text"
								name='reviewNo' class="form-control" value="${review.reviewNo}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> <input type="text"
								name='reviewTitle' class="form-control" value="${review.reviewTitle}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="reviewContent" rows="3">${review.reviewContent}</textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Writer</label> <input type="text"
								name="id" class="form-control" value="${review.customer.id}">
						</div>
					</div>
					<!-- /.box-body -->
				</form>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">SAVE</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>
				</div>

				<script>
					$(document)
							.ready(
									function() {

										var formObj = $("form[role='form']");

										console.log(formObj);

										$(".btn-warning")
												.on(
														"click",
														function() {
															self.location = "${ctx}/review/listpage.do?page=${pager.page}&perPageNum=${pager.perPageNum}"
																	+ "&searchType=${pager.searchType}&keyword=${pager.keyword}";
														});

										$(".btn-primary").on("click",
												function() {
													formObj.submit();
												});
									});
				</script>




			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

