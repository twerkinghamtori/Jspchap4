<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session을 이용한 장바구니 예제</title>
</head>
<body>
   <h3>상품선택</h3>
   <form action="sessionAdd.jsp" method="post">
      <select name="product">
         <option>사과</option>
         <option>배</option>
         <option>감</option>
         <option>자몽</option>
         <option>귤</option>
         <option>딸기</option>
      </select>
      <input type="submit" value="장바구니추가">
   </form>
   <a href="sessionView.jsp">장바구니 보기</a>
   <%-- session은 브라우저 별로 하나씩 가짐(?) => 다른 페이지로 연결되고 같은 session을 공유할 수 있음
        chrome 과 edge는 다른 session
        chrome1과 chrome2는 같은 session --%>
</body>
</html>