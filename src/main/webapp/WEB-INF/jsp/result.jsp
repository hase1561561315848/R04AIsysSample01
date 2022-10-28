<%@page import="java.util.Optional"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	Optional<String> message = 
		Optional.ofNullable((String) request.getAttribute("message"));
Optional<String> string = 
	Optional.ofNullable((String) request.getAttribute("string"));

%>

<body>

	<span><a href="./hello"> hello</a></span>
	<span><a href="./result"> language(固定)</a></span>
	<span><a href="./languageRequest"> language（入力）</a></span>
	<span><a href="./sentimentresult"> Sentiment(固定)</a></span>
	<span><a href="./sentimentRequest"> Sentiment(入力、強調)</a></span>
<H1>DetectLanguage</H1>
<H3>文章：<%= string.orElse("ERROR") %></H3>
<H3>結果：<%= message.orElse("ERROR") %></H3>
</body>
</html>