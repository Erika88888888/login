<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.User,model.Content,java.util.List" %>
<%


User user = (User) session.getAttribute("loginuser");

List<Content> contentlist = (List<Content>)application.getAttribute("contentlist");






%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

ようこそ<%= user.getUserId() %>さん



<%

for(Content content:contentlist){%>

<%= content.getContent() %>

<%} %>


</body>
</html>