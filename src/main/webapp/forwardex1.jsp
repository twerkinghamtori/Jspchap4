<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 하는 페이지</title>
<!-- http://localhost:8080/jspchap4/forwardex1.jsp?id=test123 -->
</head>
<body>
<h2> forward 하는 페이지 입니다. 이 내용은 화면에 출력되지 않습니다.</h2>
<% pageContext.forward("forwardex2.jsp"); %>
<%-- 브라우저:ex1.jsp 요청 -> ex1.jsp: ex2.jsp호출 -> ex2.jsp:브라우저로 응답
     ex1.jsp 가 ex2.jsp를 호출할 때, request 등의 객체를 함께 전달함 => "같은 request 영역의 페이지" 라고 부름)
     브라우저는 ex1.jsp로 요청했다고 생각하기 때문에 url 바뀌지 않음
     
     영역
     - page 영역    : 한개의 jsp페이지가 하나의 page 영역 (영역중에 가장 작음) => pageContext가 담당 객체
     - request 영역 : 같은 request 객체를 공유하고 있는 모든 jsp 페이지 => request
     - session 영역 : 같은 session 객체를 공유하고 있는 모든 jsp 페이지 => session
     - application 영역 : 같은 application 객체를 공유하고 있는 모든 jsp 페이지 (같은 project에 있는 모든 jsp) => application
     ==> 영역 담당 객체 4개는 속성을 등록, 조회, 삭제하는 기능을 가지고 있음.
           =>속성등록 : void setAttribute("속성명", "속성값")
           =>속성조회 : getAttribute("속성명"), 자료형은 Object. 리턴값은 속성값.
           =>속성제거 : void removeAttribute("속성명")
     --%>
</body>
</html>