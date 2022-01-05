<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<%
	//PhoneDao 메모리 로딩
	PhoneDao phoneDao = new PhoneDao();

	//Request class에 있는 getParameter 메소드로 파라미터 값을 받아온다.(request 객체는 이미 메모리에 로딩됨)
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	//전송된 값(파라미터)을 Vo 객체에 담는다.
	PersonVo personVo = new PersonVo(name,hp,company);
	
	//저장
	phoneDao.personInsert(personVo);
	
	//redirect
	response.sendRedirect("./list.jsp");
	
	/*
	//전체 리스트 불러오기
	List<PersonVo> personList = phoneDao.getPersonList();
	//body 부분에서 html 문법과 섞어 표기>html로 표현
	*/
	
	/*
	//테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
%>

