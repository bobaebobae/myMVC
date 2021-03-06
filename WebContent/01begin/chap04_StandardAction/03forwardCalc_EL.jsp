<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String firstNum = request.getParameter("firstNum");	// test에서 넘어온 값을 받아야 한다.
	String secondNum = request.getParameter("secondNum");
	
	int nFirstNum = Integer.parseInt(firstNum);	// 숫자로 바꾸자
	int nSecondNum = Integer.parseInt(secondNum);
	
	int sum = 0;
	for(int i=nFirstNum; i<=nSecondNum; i++){
		sum += i;
	}
	
	/*
	   == request 내장객체는 클라이언트(02forwardCalcTest.jsp) 가 
	           보내온 데이터를 읽어들이는( request.getParameter("변수명"); ) 역할도 있고 
	           저장소 기능( request.setAttribute("키", 저장할객체); )을 하는 역할도 있다. 
	*/
	
	// request.setAttribute("sum", new Integer(sum));	// 원래는 이렇게 해야되는데 귀찮으니 오토박스로 한다.
	// 원래는 위처럼 객체로 만들어서 저장을 해야 하지만 자바가 알아서 auto boxing(자동적으로 객체로 만들어주는 것) 해주기 때문에 아래처럼 쓸 수 있다. 
	request.setAttribute("sum", sum);
	
	request.setAttribute("firstNum", firstNum);
	request.setAttribute("secondNum", secondNum);
%>

<jsp:forward page="03forwardCalcView_EL.jsp"></jsp:forward>
<!-- 
	웹브라우저 상에서 URL 주소는 그대로 /MyMVC/chap04_StandardAction/02forwardCalc.jsp 인데
	웹브라우저 상에 보여지는 내용물은  "/MyMVC/chap04_StandardAction/02forwardCalcView.jsp"의 내용이 보여진다.
 -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>