<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response 예제</title>
</head>
<body>
   <h2> 이 페이지는 responseex2.jsp 페이지 입니다.
      responseex1.jsp 페이지를 요쳥하면 이 페이지가 호출됩니다.
      URL을 확인해 보시면 responseex2.jsp로 변경되어 있습니다.
      다음의 forward와 비교하여 정확한 의미를 이해하고 있어야 합니다.</h2>
   <h2><%= request.getParameter("id") %></h2>
</body>
</html>