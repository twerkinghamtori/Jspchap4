<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기 here</title>
</head>
<body>
   <%
      List<String> cart = (List<String>)session.getAttribute("cart"); //(List<String>) 형변환? getAttribute 자료형이 Object. 리턴타입이랑 자료형이랑 다른거였나..?
      if(cart==null || cart.size()==0) {
   %>
   <h3>장바구니에 상품이 없습니다.</h3>
   <% } else { %>
   <h3>장바구니 상품</h3>
      <% for(String p : cart) { %>
           <h4><%=p %></h4>
      <% } %>
   <% } 
      session.removeAttribute("cart");
   %>
   
</body>
</html>