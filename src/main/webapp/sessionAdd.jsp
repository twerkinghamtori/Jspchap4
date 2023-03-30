<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 추가</title>
</head>
<body>
   <%
     request.setCharacterEncoding("UTF-8");
     String product = request.getParameter("product");
     List<String> cart = (List<String>)session.getAttribute("cart"); //처음에 session에는 아무것도 없기때문에 getAttribute =>null
     if(cart==null) {
    	 cart = new ArrayList<String>();
    	 session.setAttribute("cart",cart);
     }
     cart.add(product);
   %>
   <script>
      alert("<%=product%> 이(가) 장바구니에 추가되었습니다.")
      history.go(-1); //이전페이지로 이동 
      //=> session 빼고, request 객체, cart 없어짐.
   </script>
</body>
</html>