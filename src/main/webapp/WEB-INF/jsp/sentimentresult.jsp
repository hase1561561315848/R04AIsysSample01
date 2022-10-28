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
Optional<String> message1 = Optional.ofNullable((String) request.getAttribute("message1"));
Optional<String> message2 = Optional.ofNullable((String) request.getAttribute("message2"));
Optional<String> message3 = Optional.ofNullable((String) request.getAttribute("message3"));
Optional<String> string = Optional.ofNullable((String) request.getAttribute("string"));
%>

<body>

	<span><a href="./hello"> hello</a></span>
	<span><a href="./result"> language(固定)</a></span>
	<span><a href="./languageRequest"> language（入力）</a></span>
	<span><a href="./sentimentresult"> Sentiment(固定)</a></span>
	<span><a href="./sentimentRequest"> Sentiment(入力、強調)</a></span>
	<H1>DetectLanguage</H1>
	<H3>
		文章：<%=string.orElse("ERROR")%>

	</H3>
	<H3>
		POSITIVE：<%=message1.orElse("ERROR")%>
		％
	</H3>
	<H3>
		NEUTRAL：<%=message2.orElse("ERROR")%>
		％
	</H3>

	<H3>
		NEGATIVE：<%=message3.orElse("ERROR")%>
		％
	</H3>

</body>
</html>