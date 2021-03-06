<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- === JSTL(JSP Standard Tag Library) 사용하기 === --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- C는 커스텀의 C를 뜻함. -->

<%-- === 변수의 선언방법 === --%>
<c:set var="no1" value='${param.num1}'></c:set> <!-- C: 변수를 선언하겠다. -->
<c:set var="no2" value='${param.num2}'/><!-- form에서 넘어온 num1 값을 읽어오자! 그리고 그것을 no1변수에 담아두겠다. parm은 파라미터를 뜻함-->
<c:set var="result" value="${no1*no2}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두개의 수를 입력받아서 곱셈하기 결과 출력하기</title>
</head>
<body>
	${no1}와 ${no2}의 곱은? ${result}입니다.<br/><br/>
	${param.num1}와 ${param.num2}의 곱은? ${result}입니다.<br/><br/>
</body>
</html>