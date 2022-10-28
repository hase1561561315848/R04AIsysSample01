<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String message = 
		(String) request.getAttribute("message");

%>

<body>

	<span><a href="./hello"> hello</a></span>
	<span><a href="./result"> language(固定)</a></span>
	<span><a href="./languageRequest"> language（入力）</a></span>
	<span><a href="./sentimentresult"> Sentiment(固定)</a></span>
	<span><a href="./sentimentRequest"> Sentiment(入力、強調)</a></span>
<H1><%= message %></H1>
</body>
</html>