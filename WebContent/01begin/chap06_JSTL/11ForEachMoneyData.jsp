<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int[] priceArr = {50000, 100000, 250000, 15000, 2000000};
	request.setAttribute("priceArr", priceArr);

	RequestDispatcher dispatcher = request.getRequestDispatcher("11ForEachMoneyView.jsp");
	dispatcher.forward(request, response);
%>	