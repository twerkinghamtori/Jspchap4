<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 파라미터이름 : 
       <form> 반드시 form 객체 안에 있어야 함.
         <input type=".." name="파라미터이름"> => name이 아니라 id 속성으로 처리하면 안됨.
         <input type="submit"> => 클릭되면 form 객체의 하위 입력태그들의 값을 page 이름의 페이지로 전달.
                                   1. form의 action 속성의 페이지로 요청
                                   2. form 객체의 입력 파라미터들을 요청페이지로 전달
       </form> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체 예제</title>
</head>
<body>
<h2>request 내장객체 : 클라이언트의 요청 정보를 저장하는 객체</h2>
<%-- method="get" => url에 파라미터가 나타남.(로그인은 안되겠죠?) post => url에서 파라미터값 사라짐(보안상 유리)--%>
<form action="requestex1.jsp" method="post">
  이름 : <input type="text" name = "name"><br>
  나이 : <input type="text" name = "age"><br>
  성별 : <input type="radio" name = "gender" value="1">남
        <input type="radio" name = "gender" value="2">여<br>
  취미 : <input type="checkbox" name = "hobby" value="여행">여행
        <input type="checkbox" name = "hobby" value="요리">요리
        <input type="checkbox" name = "hobby" value="독서">독서
        <input type="checkbox" name = "hobby" value="축구">축구<br>
  출생년도 : <select name="year">
           <%for(int i=1990; i<=2000; i++) {%>
           <option><%=i %></option>
           <%} %>
           </select>
           <input type="submit" value="전송">
</form>
</body>
</html>
<%-- submit 전송을 누르는 순간 내부의 모든 파라미터가(name, age, gender,...) requestex1.jsp를 요청.--%>