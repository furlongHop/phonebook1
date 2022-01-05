<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<%
	//PhoneDao 메모리 로딩(객체 생성)
	PhoneDao phoneDao = new PhoneDao();

	//Request class에 있는 getParameter 메소드로 파라미터 값을 받아온다.(request 객체는 이미 메모리에 로딩됨)
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	int personId = Integer.parseInt(request.getParameter("id"));

	//전송된 값(파라미터)을 Vo 객체에 담는다.
	PersonVo personVo = new PersonVo(personId, name, hp, company);

	//수정
	phoneDao.personUpdate(personVo);

	//redirect
	//http://localhost:8088/phonebook1/list.jsp + enter
	response.sendRedirect("./list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>