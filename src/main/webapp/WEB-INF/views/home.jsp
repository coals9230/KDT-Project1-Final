<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>도서목록</title>
</head>
<body>
<div style="overflow:auto;" class="container" align="center">
    <h1>SWU LIBRARY</h1></div>

<p>id: ${user.id} &nbsp; &nbsp; email: ${user.email} &nbsp; &nbsp; name: ${user.name}


<button type="button" onclick="location.href='update'">수정하기</button>

<form action="/logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <button type="submit">로그아웃</button>
</form>

<form action="/delete" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <button type="submit">탈퇴하기</button>
</form>


<div style="overflow:auto;" class="container" align="center">
    <%@ include file="book-list.jsp" %>
</div>
<br><br>
</body>
</html>