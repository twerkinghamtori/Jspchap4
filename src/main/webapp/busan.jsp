<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부산의 도시 정보</title>
</head>
<body>
   <h1>부산</h1>
   <h3>부산은 대한민국에서 2번쨰로 큰 도시다.</h3>
   <h3>부산의 인구는 약 300만명이다.</h3>
   <% String city = request.getParameter("city"); %>
   <h3><%= city %></h3>
</body>
</html>