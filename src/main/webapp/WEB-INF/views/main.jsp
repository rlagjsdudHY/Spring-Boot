<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <!DOCTYPE html>
<html lang="ko">
				<div>세션 값: <%= session.getAttribute("uidSession") %></div>
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
<!-- 		<link rel="stylesheet" href="/style/style.css"> -->
		<style>
				div#wrap { margin: 0 auto; width: 1200px; text-align: center;}
				table { border-collapse: collapse;  width:900px; margin: 0 auto; }
				table th { border: 1px solid #000;  background-color: #78b9e0; }
				table td { border: 1px solid #000;  }
				div#submitLine { margin-top: 30px; float:right; }	
				table#listHeader tbody tr th:nth-child(1) { width: 180px; }
				table#listHeader tbody tr th:nth-child(2) { width: 530px; }
				table#listHeader tbody tr th:nth-child(3) { width: 220px; }
				table#listHeader tbody tr th:nth-child(4) { width: 150px; }
				table#listHeader tbody tr th:nth-child(5) { width: 220px; }
		</style>
	</head>
	<body>
	
		<div id="wrap">
	<!-- 헤더삽입 -->
	<jsp:include page="/WEB-INF/views/ind/header.jsp" />
			<h2>자유게시판</h2>
			<hr>
			
			<table id="listHeader">
				<tbody>
					<tr>
						<th>번호</th>
						<th>글제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>날짜</th>
					</tr>
				</tbody>
				<tbody id="listInner">
				<c:forEach var="list" items="${BBSlist}">
					<tr>
						<td>${list.num }</td>
						<td>${list.subject }</td>
						<td>${list.uname }</td>
						<td>${list.readcnt }</td>
						<td>
                            <fmt:formatDate value="${list.regtm}" pattern="yyyy-MM-dd" />
                        </td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div id="submitLine">
			<button type="button" onclick="location.href='/write'">글쓰기</button>
			<input type="text">
			<button type="submit">검색</button>
			</div>
<!-- 			footer 삽입 -->
			<jsp:include page="/WEB-INF/views/ind/footer.jsp" />
<%-- 			<%@ include file="/WEB-INF/views/ind/footer.jsp" %>  --%>
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
        <script src="/script/script.js"></script>	
	</body>
</html>
   
 