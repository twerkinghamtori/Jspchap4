<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <% int num = Integer.parseInt(request.getParameter("num")); //오류처리 그냥 자바에서 try/catch하면 안되나? alert 못해서? javascript 쓰는거임?
      int sum=0;
      String kbn = request.getParameter("kbn");
      switch(kbn) {
      case "0" : for(int i=1; i<=num; i++) sum+=i; break;
      case "1" : for(int i=1; i<=num; i++) if(i%2==1) sum+=i; break;
      case "2" : for(int i=1; i<=num; i++) if(i%2==0)sum+=i; break;   	  
      }      
   %>   
<meta charset="UTF-8">
<title><%=num%> 까지의 합</title>
</head>
<body>
   <%= num %> 까지의 <%= kbn.equals("0")?"합":kbn.equals("1")?"홀수합":"짝수합" %>
   <%= sum %> 
</body>
</html>