<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 예제</title>
</head>
<body>
   <h2>pageContext 객체 : page 영역을 담당하는 객체. 현재 페이지의 자원을 관리한다.</h2>
   <% if (request==pageContext.getRequest()) { %>
   request 객체와 pageContext.getRequest()가 리턴하는 객체는 같은 객체임 <br>
   <% } %>
   <% if (response==pageContext.getResponse()) { %>
   response 객체와 pageContext.getResponse()가 리턴하는 객체는 같은 객체임 <br>
   <% } %>
   <% if (session==pageContext.getSession()) { %>
   session 객체와 pageContext.getSession()가 리턴하는 객체는 같은 객체임 <br>
   <% } %>
   <% if (out==pageContext.getOut()) { %>
   out 객체와 pageContext.getOut()가 리턴하는 객체는 같은 객체임 <br>
   <% } %>
   
   <hr>
   <h3> pageContext 객체는 영역담당 객체이므로 속성관리 메서드를 가진다.</h3>
   <%
      pageContext.setAttribute("test", new Date());
   %>
   test 속성 : <%= pageContext.getAttribute("test") %><br>
   <%
      pageContext.removeAttribute("test");
   %>
   test 속성 : <%= pageContext.getAttribute("test") %><br>
</body>
</html>