<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 객체 에제</title>
</head>
<body>
  <%
     session.setMaxInactiveInterval(10); 
     //session 유지시간을 10초로 설정. => 최종접속시간 기준 10초 이후에는 새로운 sessoin으로 교체.
     //밀리초 아니고 초 단위
     //tomcat 은 기본설정이 30분.
  %>
  <h3>session 정보 : 브라우저별로 session이 할당됨<br>
                  클라이언트의 정보 저장 기능을 가짐
  </h3>
  isNew() : <%=session.isNew() %><br> <%-- 브라우저는 session이 항상 있음. session 객체가 새로 교체되었니? => true || false --%>
  생성시간 : <%=session.getCreationTime() %><br> <%-- session 객체가 교체된 시간.(밀리초로 표현) --%>
  최종접속시간 : <%=session.getLastAccessedTime() %><br>
  session id : <%=session.getId() %><br> <%-- session 별로 고유의 id값. session 객체가 교체 => id값 바뀜. --%>
</body>
</html>