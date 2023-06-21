<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <!DOCTYPE html>
<html lang="ko">
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
				
				/*/////////////// 로그인 시작 /member/login.jsp //////////////// */
/*////////////////////////////////////////////////////////////////////*/
div.loginDiv {
	text-align: center;
	padding: 40px;
}

div.loginDiv>form#loginFrm {
	padding: 20px;
	border: 2px solid rgba(0, 0, 0, 0.1);
	display: inline-block;
}


#loginFrm input {
	
	width: 320px;
	font-size: 17px;
	padding: 13px 16px;
	margin-bottom: 7px;
	display: block;
}

#loginFrm button {
	width: 320px;
	color: #fff;
	font-size: 18px;
	padding: 15px 20px;
	border: none;
	margin-top: 17px;
	margin-bottom: 7px;
	background-color: #4e87f0;
	cursor: pointer;
	display: block;
}
/*////////////////////////////////////////////////////////////////////*/
/*/////////////// 로그인 끝 /member/login.jsp //////////////// */
		</style>
	</head>
	<body>
	
		<div id="wrap">
	<!-- 헤더삽입 -->
	<jsp:include page="/WEB-INF/views/ind/header.jsp" />
	
			<h2>로그인 페이지</h2>
			<hr>
			 <!-- 실제 작업 영역 시작 -->
    		<div id="contents" class="loginDiv">

				<form action="/loginProc" id="loginFrm" name="loginProc" method="post">
	        
		        	<div id="loginArea">	        	
		        		<div id="loginInput">
		        			<input type="text" name="uid" placeholder="아이디 입력" id="uid">
		        			<input type="password" name="upw" placeholder="비밀번호 입력" id="upw">
  							<input type="hidden" name="conndev" value="pc">
		        		</div>
		        		
		        		<button type="submit" id="loginBtn">로그인</button>
		        		
		        	</div>
		        	<!-- div#loginArea -->
	        	
	        	</form>

    		</div>
    		<!-- 실제 작업 영역 끝 div.loginDiv -->
    		    	
<!-- 			footer 삽입 -->
			<jsp:include page="/WEB-INF/views/ind/footer.jsp" />
<%-- 			<%@ include file="/WEB-INF/views/ind/footer.jsp" %>  --%>
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
        <script src="/script/script.js"></script>	
	</body>
</html>
   
 