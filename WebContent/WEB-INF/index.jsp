<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String ctxPath = request.getContextPath();
			//MyMVC
%>

<jsp:include page="header.jsp"/>   <!-- header.jsp 얘랑 같은 경로에 있으니 -->

<style>
	span#storeName {
		font-size: 16pt;
		color: red;
	}
</style>

<p>
	안녕하세요? <span id="storeName">${requestScope.storeName}</span>입니다.
</p>
<div class="container">
  <div style="width: 70%; margin: 0 auto;">
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <%--
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	       --%>
	       <c:forEach items="${imgList}" varStatus="status"> <!-- requestScope. 생략되어져 있음 -->
	       		<c:if test="${status.index == 0}"> <!-- status.index 처음 값은 0 -->
	       			<li data-target="#myCarousel" data-slide-to="${status.index}" class="active"></li>
	       		</c:if>
	       		<c:if test="${status.index != 0}"> <!-- 0이 아니라면 -->
	       			<li data-target="#myCarousel" data-slide-to="${status.index}"></li>
	       		</c:if>
	       </c:forEach>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner">
	      <%-- 
	      <div class="item active">
	        <img src="la.jpg" alt="Los Angeles" style="width:100%;">
	      </div>
	
	      <div class="item">
	        <img src="chicago.jpg" alt="Chicago" style="width:100%;">
	      </div>
	    
	      <div class="item">
	        <img src="ny.jpg" alt="New york" style="width:100%;">
	      </div>
	      --%>
	      <c:forEach var="imgVO" items="${imgList}" varStatus="status">
	      	<c:if test="${status.index == 0}">
	      		<div class="item active">
	      			<img src="<%= ctxPath%>/images/${imgVO.imgfilename}" style="width:100%;">
	      		</div>
	      	</c:if>
	      	
	      	<c:if test="${status.index > 0}">
	      		<div class="item">
	      			<img src="<%= ctxPath%>/images/${imgVO.imgfilename}" style="width:100%;">
	      		</div>
	      	</c:if>
	      </c:forEach>
	    </div>s
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
  </div>  
</div>

<jsp:include page="footer.jsp"/>