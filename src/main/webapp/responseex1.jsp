<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response : 응답 객체</title>
<!-- http://localhost:8080/jspchap4/responseex1.jsp?id=aaa -->
</head>
<body>
  <h1> response 객체는 브라우저에 전달되는 객체라 이해 하면 된다. 내부에
  출력 버퍼를 가지고 있어서, 브라우저에 전달되는 내용을 저장하고 있다. </h1>
  <h2> 또한 response 객체를 이용하여 브라우저로 하여금 다른 페이지를 요청하도록 할 수 있다.
  다른 페이지를 요청하도록 하는 것을 redirect라고 한다.</h2>
  <h2> 지금 보여지고 있는 페이지의 내용은 하나도 보이지 않을 것이다.</h2>
  <% response.sendRedirect("responseex2.jsp"); %>
  <%-- 브라우저:ex1.jsp 요청 -> ex1.jsp:redirect 응답 -> 브라우저:ex2.jsp 재요청 -> ex2.jsp 응답 
       브라우저가 ex2.jsp를 요청했기 때문에 url 변경됨.--%>
</body>
</html>