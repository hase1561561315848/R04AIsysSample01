<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CognitiveServiceを使うサイト</title>
</head>

<body>
	<span><a href="./hello"> hello</a></span>
	<span><a href="./result"> language(固定)</a></span>
	<span><a href="./languageRequest"> language（入力）</a></span>
	<span><a href="./sentimentresult"> Sentiment(固定)</a></span>
	<span><a href="./sentimentRequest"> Sentiment(入力、強調)</a></span>
<h1>CognitiveServiceを使うサイト</h1>
<h1>sentiment用</h1>
<h3>調べたい文字列を教えてください</h3>
<form method="POST" action="./sentimentresult">
<input type="TEXT" name="string" />
<input type="submit" />
</form>
</body>
</html>
