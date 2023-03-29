<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도시 조회</title>
</head>
<body>
<select id="city">
    <option value="seoul">서울</option>
    <option value="busan">부산</option>
</select>

<input type="button" value="도시조회" onclick="city_select(city.value)">
<input type="button" value="전체도시조회" onclick="locations.href='cityall.jsp?city=all'">

<script type="text/javascript">
   function city_select(city) {
	   location.href = "city.jsp?city="+city; //get 방식
   }
</script>
</body>
</html>