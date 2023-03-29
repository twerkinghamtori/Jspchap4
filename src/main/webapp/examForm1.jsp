<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력된 숫자까지의 합 구하기</title>
</head>
<body>
<%-- onsubmit : form 태그의 이벤트
                form 내부의 submit 버튼이 클릭된 경우 form 객체에 이벤트 발생(submit이 발생된게 아님)
                this : form 객체 --%>
<%-- action="" || action 생략 => 내 페이지가 됨. => 현재 페이지를 재요청 --%>
  <form action="exam1.jsp" method="post" onsubmit="return check_input(0, this)"> <%--함수를 return?, return true? --%>  
  <%-- type="hidden" : 파라미터값은 존재. but, 화면에 보여지지 않음. --%>
     <input type="hidden" name="kbn" value="0">
     <input type="text" name="num">까지의 합 구하기
     <input type="submit" value="합계">
     <input type="button" value="짝수합계" onclick="check_input(2, this.form)"> <%--여기서 this는 button이니까. js에서 this.form 은 this가 속한 form객체를 의미함 --%>
     <input type="button" value="홀수합계" onclick="check_input(1, this.form)">
  </form>
  <script type="text/javascript">
     function check_input(kbn, f) { //submit을 중간에 낚아채서 check_input(f)를 실행
    	 if(f.num.value.trim() == '') {
    		 alert("숫자를 입력하세요")
    		 f.num.focus(); 
    		 return false; //submit 이벤트를 취소하라는 의미.
    	 } 
    	 if(isNaN(f.num.value)) {
    		 alert("숫자만 입력하세요");
    		 f.num.focus(); //고다릴게...돌아와...
    		 f.num.value="";
    		 return false;
    	 }
//    	 return true; //submit이벤트를 계속 진행
    	 
    	 //자바스크립트에서 submit 버튼 없이 강제로 submit 하기
    	 f.kbn.value = kbn;
    	 f.submit();
    	 
     }
  </script>
</body>
</html>