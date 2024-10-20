<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.User" %>
<%@ page import="model.Mutter" %>
<%@ page import="java.util.List" %>
<%
    User user = (User)session.getAttribute("user");
	List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");
	String errorMsg = (String)request.getAttribute("errorMsg");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p><%= user.getUserName()  %>さん、ログイン中</p>
<a href="Logout">ログアウト</a>
<p><a href="Main">更新</a></p>

<form action="Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if(errorMsg != null){ %>
	<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) { %>
 <p><%= mutter.getUserName() %>:<%= mutter.getMessageBody() %></p>
<% } %>

</body>
</html>