<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
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
				<input type="title" name = "title" class="form-control" value="${view.title}" />
			</div>
			<div class="form-group">
				<label class="control-label">작성자</label>
				<input type="text" name="writer" class="form-control" value="${view.writer}" readonly="readonly"/>
			</div>
			<div class="form-group">
				<label class="control-label">내용</label>
				<input type="text" name="content" class="form-control" value="${view.content}" />
			</div>
			<button type="submit">작성</button>

		</form>
	</div>
<%-- 
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<form method="post">

<label>제목</label>
<input type="text" name="title" value="${view.title }"/><br />

<label>작성자</label>
<input type="text" name="writer" value="${view.writer }"/><br />


<label>내용</label>
<textarea cols="50" rows="5" name="content" value="${view.content }"></textarea><br />

<button type="submit">완료</button>

</form> --%>
</body>
</html>