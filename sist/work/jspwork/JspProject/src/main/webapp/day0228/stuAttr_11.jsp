<%@page import="test.Student"%>
<%@page import="java.util.Vector"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h3>request에 Vector 저장 후 불러오는 연습</h3>
	<%
	Vector<Student> list = new Vector<>();
	list.add(new Student("우예은", "강남구", 88));
	list.add(new Student("이예은", "강남구", 78));
	list.add(new Student("김소라", "부산시", 48));
	list.add(new Student("배윤정", "영등포구", 35));
	list.add(new Student("김영자", "서초구", 26));
	
	//데이터 vector를 request에 저장
	request.setAttribute("list",list);
	
	//페이지 이동 밥법 2가지
	//forward(url주소 안 바뀜)
	//redirect(url주소 바뀜)
	
	//<jsp:> 태그이동
	response.sendRedirect("stuRedirect_10.jsp");
	%>

</body>
</html>
