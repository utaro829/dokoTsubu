<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
	User user = (User)session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>どこつぶ</title>
</head>
<body>
	<h1>どこつぶログイン</h1>
	<% if(user == null){ %>
		<p>ログインに失敗しました。</p>
		<a href="index.jsp">TOPへ</a>
	<% } else { %>
		<p>ログインに成功しました。</p>
		<p>ようこそ<%= user.getUserName() %>さん</p>
		<a href="Main">つぶやき投稿・閲覧へ</a>
	
	<% } %>

</body>
</html>