<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div>
			<%@ include file="../include/header.jsp"%>
		</div>
		<hr>
		<div id="nav">
			<%@ include file="../include/nav.jsp"%>
		</div>


		<form method="post">
			<div class="form-group">
				<label for="title" class="control-label">제목</label>
				<input type="text" class="form-control" value="${view.title}" readonly="readonly"/>
			</div>
			<div class="form-group">
				<label class="control-label">작성자</label>
				<input type="text" class="form-control" value="${view.writer}" readonly="readonly"/>
			</div>
			<div class="form-group">
				<label class="control-label">내용</label>
				<input type="text" class="form-control" value="${view.content}" readonly="readonly"/>
			</div>
			<div class="form-group" align="right">
				<a href="/board/modify?bno=${view.bno}" class="btn btn-warning">게시물 수정</a>
				<a href="/board/delete?bno=${view.bno}" class="btn btn-danger">게시물 삭제</a>
			</div>
		</form>
		<hr />
		<div>
				<ol class ="replyList">
					<c:forEach items="${reply}" var="reply">
						<li>
							<div>
								<p>
								<span class="glyphicon glyphicon-user"></span>
									${reply.writer} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" />
								</p>
								<p class="bg-info">${reply.content}</p>
							</div>
						</li>
					</c:forEach>
				</ol>
				</div>
	<form method="post" action="/reply/write" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">댓글 작성자</label>
						<div class="col-sm-10">
								<input type="text" name="writer" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">댓글 내용</label>
						<div class="col-sm-10">
								<textarea rows="5" cols="50" name="content" class="form-control"></textarea>
						</div>
					</div>
					<div class="form-group" align="right">
						<div class="col-sm-offset-2 col-sm-10">
								<input type="hidden" name="bno" value="${view.bno}">
								<button type="submit" class="repSubmit btn btn-success">댓글 작성</button>
						</div>
					</div>
		</form>
	</div>


</body>
</html>
