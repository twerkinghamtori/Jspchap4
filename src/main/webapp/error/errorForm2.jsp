<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 오류 발생 페이지</title>
</head>
<body>
   <%= request.getParameter("name").trim() %>
   <%-- NullPointException 예외 발생 --%>
</body>
</html>