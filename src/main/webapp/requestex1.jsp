<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- post 방식 전송 : <form method="post"> 형식으로 전송되는 경우 
                    파라미터 정보가 http 프로토콜의 body부분에 전송. => 우리 눈에는 파라미터정보가 보이지 않음(보안에 유리)
     get 방식 전송  : 기본방식. method="get" 생략가능.
                    파라미터 정보가 ulr 부분에 추가되어서 전송됨. => 요청 url에 파라미터 정보가 보임.
     request.setCharacterEncoding(인코딩방식)
     => post 방식 전송시 인코딩 방식.
     String request.getParameter(파라미터 이름) : 파라미터의 값을 리턴. 값을 한개만 리턴할 수 있음. (ex.hobby의 값 중 하나만 리턴함)
     String[] request.getParameterValues(파라미터 이름) : 파라미터 값들을 배열로 리턴.
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송된 파라미터값 출력하기</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8"); //파라미터값을 인코딩하는 방식을 설정. 반드시 파라미터 가져오기(getParameter) 전에 실행.
   String name = request.getParameter("name");
   String age = request.getParameter("age");
   String gender = request.getParameter("gender");
   String hobby = request.getParameter("hobby");
   String[] hobbies = request.getParameterValues("hobby");
   String year = request.getParameter("year");
%>
이름 : <%= name %><br>
나이 : <%= age %><br>
성별 : <%= gender.equals("1")?"남자":"여자" %><br>
취미 : <%= hobby %><br>
출생년도 : <%= year %><br>
취미 : 
<%for(String h : hobbies) { %>
<%= h %>
<%} %>

<h3>모든 파라미터 정보 조회하기</h3>
<table>
   <tr>
      <th>파라미터이름</th>
      <th>파라미터값</th>
   </tr>
   <%--Enumeration : 반복자. Iterator 반복자의 구버전 --%>
   <%
      Enumeration e = request.getParameterNames(); 
      while(e.hasMoreElements()) { 
    	  String pname = (String)e.nextElement(); //e.nextElement() 의 자료형은 object
    	  String[] values = request.getParameterValues(pname);
   %>  	  
   <tr>
      <td> <%= pname %> </td>
      <td> <% for(String s : values) { %> 
              <%= s %>
           <% } %>
      </td>
   </tr>
     <% }  %>
</table>
</body>
</html>
