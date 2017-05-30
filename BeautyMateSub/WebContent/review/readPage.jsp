<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

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
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="${ctx }/modify.do" method="post">

					<input type='hidden' name='reviewNo' value="${review.reviewNo}"> <input
						type='hidden' name='page' value="${pager.page}"> <input
						type='hidden' name='perPageNum' value="${pager.perPageNum}">
					<input type='hidden' name='searchType' value="${pager.searchType}">
					<input type='hidden' name='keyword' value="${pager.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label> <input type="text"
							name='title' class="form-control" value="${review.reviewTitle}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="content" rows="3"
							readonly="readonly">${review.reviewContent}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label> <input type="text"
							name="writer" class="form-control" value="${review.customer.id}"
							readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->

				<div class="box-footer">
					<button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
					<button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
					<button type="submit" class="btn btn-primary" id="goListBtn">GO
						LIST</button>
				</div>



			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->



	<div class="row">
		<div class="col-md-12">

			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title">ADD NEW REPLY</h3>
				</div>
				<div class="box-body">
					<label for="exampleInputEmail1">Writer</label> <input
						class="form-control" type="text" placeholder="USER ID"
						id="newReplyWriter"> <label for="exampleInputEmail1">Reply
						Text</label> <input class="form-control" type="text"
						placeholder="REPLY TEXT" id="newReplyText">

				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<button type="button" class="btn btn-primary" id="replyAddBtn">ADD
						REPLY</button>
				</div>
			</div>


			<!-- The time line -->
			<ul class="timeline">
				<!-- timeline time label -->
				<li class="time-label" id="repliesDiv"><span class="bg-green">
						Replies List </span></li>
			</ul>

			<div class='text-center'>
				<ul id="pagination" class="pagination pagination-sm no-margin ">

				</ul>
			</div>

		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->



	<!-- Modal -->
	<div id="modifyModal" class="modal modal-primary fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body" data-rno>
					<p>
						<input type="text" id="replytext" class="form-control">
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
					<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


</section>
<!-- /.content -->

<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-rno={{rno}}>
<i class="fa fa-comments bg-blue"></i>
 <div class="timeline-item" >
  <span class="time">
    <i class="fa fa-clock-o"></i>{{prettifyDate regdate}}
  </span>
  <h3 class="timeline-header"><strong>{{rno}}</strong> -{{replyer}}</h3>
  <div class="timeline-body">{{replytext}} </div>
    <div class="timeline-footer">
     <a class="btn btn-primary btn-xs" 
	    data-toggle="modal" data-target="#modifyModal">Modify</a>
    </div>
  </div>			
</li>
{{/each}}
</script>

<script>
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});

	var printData = function(replyArr, target, templateObject) {

		var template = Handlebars.compile(templateObject.html());

		var html = template(replyArr);
		$(".replyLi").remove();
		target.after(html);

	}

	var bno = $
	{
		boardVO.bno
	};

	var replyPage = 1;

	function getPage(pageInfo) {

		$.getJSON(pageInfo, function(data) {
			printData(data.list, $("#repliesDiv"), $('#template'));
			printPaging(data.pageMaker, $(".pagination"));

			$("#modifyModal").modal('hide');

		});
	}

	var printPaging = function(pageMaker, target) {

		var str = "";

		if (pageMaker.prev) {
			str += "<li><a href='" + (pageMaker.startPage - 1)
					+ "'> << </a></li>";
		}

		for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
			var strClass = pageMaker.cri.page == i ? 'class=active' : '';
			str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
		}

		if (pageMaker.next) {
			str += "<li><a href='" + (pageMaker.endPage + 1)
					+ "'> >> </a></li>";
		}

		target.html(str);
	};

	$("#repliesDiv").on("click", function() {

		if ($(".timeline li").size() > 1) {
			return;
		}
		getPage("/replies/" + bno + "/1");

	});

	$(".pagination").on("click", "li a", function(event) {

		event.preventDefault();

		replyPage = $(this).attr("href");

		getPage("/replies/" + bno + "/" + replyPage);

	});

	$("#replyAddBtn").on("click", function() {

		var replyerObj = $("#newReplyWriter");
		var replytextObj = $("#newReplyText");
		var replyer = replyerObj.val();
		var replytext = replytextObj.val();

		$.ajax({
			type : 'post',
			url : '/replies/',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				bno : bno,
				replyer : replyer,
				replytext : replytext
			}),
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("등록 되었습니다.");
					replyPage = 1;
					getPage("/replies/" + bno + "/" + replyPage);
					replyerObj.val("");
					replytextObj.val("");
				}
			}
		});
	});

	$(".timeline").on("click", ".replyLi", function(event) {

		var reply = $(this);

		$("#replytext").val(reply.find('.timeline-body').text());
		$(".modal-title").html(reply.attr("data-rno"));

	});

	$("#replyModBtn").on("click", function() {

		var rno = $(".modal-title").html();
		var replytext = $("#replytext").val();

		$.ajax({
			type : 'put',
			url : '/replies/' + rno,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			data : JSON.stringify({
				replytext : replytext
			}),
			dataType : 'text',
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("수정 되었습니다.");
					getPage("/replies/" + bno + "/" + replyPage);
				}
			}
		});
	});

	$("#replyDelBtn").on("click", function() {

		var rno = $(".modal-title").html();
		var replytext = $("#replytext").val();

		$.ajax({
			type : 'delete',
			url : '/replies/' + rno,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : 'text',
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("삭제 되었습니다.");
					getPage("/replies/" + bno + "/" + replyPage);
				}
			}
		});
	});
</script>


<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$("#modifyBtn").on("click", function() {
			formObj.attr("action", "modify.do");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#removeBtn").on("click", function() {
			formObj.attr("action", "remove.do");
			formObj.submit();
		});

		$("#goListBtn ").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "listpage.do");
			formObj.submit();
		});

	});
</script>






