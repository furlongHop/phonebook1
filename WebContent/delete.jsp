<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<%
	//PhoneDao 메모리 로딩
	PhoneDao phoneDao = new PhoneDao();

	//System.out.println(request.getParameter("personId"));

	//Request class에 있는 getParameter 메소드로 파라미터 값을 받아온다.(파라미터 값은 무조건 String이므로 자료형 변환 필요)
	int personId = Integer.parseInt(request.getParameter("id"));
	
	//삭제
	phoneDao.personDelete(personId);
	
	//redirect
	response.sendRedirect("./list.jsp");
	
%>
