<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="https://cdn.rawgit.com/videojs/video.js/v5.4.4/dist/video-js.css"
	rel="stylesheet">
<script
	src="https://cdn.rawgit.com/videojs/video.js/v5.4.4/dist/video.js"></script>
<script
	src="https://cdn.rawgit.com/eXon/videojs-youtube/v2.0.3/dist/Youtube.js"></script>

<title>Insert title here</title>
</head>
<body>
	<p>detail Page
	<div class="container">
		<div class="row">
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
				</tr>
			</table>
			<div class="row form-btn">
				<a
					href="${pageContext.request.contextPath}/beautyTip/clear.do?beautyTipNo=${beautyTip.beautyTipNo}">
					<button type="button" class="btn btn-default">삭제</button>
				</a>
			</div>

			<p>
				replies
				<c:forEach var="reply" items="${beautyTip.beautyTipReplys }"
					varStatus="replyStatus">
					<table class="table" style="font-size: 13px; padding: 20px;">
						<tr>
							<td><strong>${replyStatus.count}</strong></td>
							<td class="text-right">${reply.replyContent}</td>
							<td colspan="2">
								<p class="txt">${reply.customer.id}</p>
							</td>
						</tr>
					</table>
				</c:forEach>
		</div>
	</div>
	
	<!-- https://youtu.be/kzGp3jVASgk -->
	<!-- https://youtu.be/s6yENYX_6IY -->
	<!-- https://youtu.be/s6yENYX_6IY?t=2 -->
	<%-- poster="${ctx }/resources/img/sang/poster.jpg" --%>
	<video id="my-video" class="video-js" controls preload="auto"
		width="640" height="264" data-setup="{}">
	<source src="${beautyTip.video}" type='video/mp4'> <!-- <source	src="https://youtu.be/s6yENYX_6IY" type='video/youtube'> -->
	<p class="vjs-no-js">
		To view this video please enable JavaScript, and consider upgrading to
		a web browser that <a href="http://videojs.com/html5-video-support/"
			target="_blank">supports HTML5 video</a>
	</p></video>

	<video id="my_video_1" class="video-js vjs-default-skin" controls preload="auto" width="640" height="268" data-setup='{ "techOrder": ["youtube"] }'>
    <source src="https://youtu.be/d0AwCpMqQIc" type='video/youtube'>
  </video>

</body>
</html>