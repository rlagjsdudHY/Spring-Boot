<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<style>
		div#wrap { margin: 0 auto; width: 1200px; text-align: center;}
			table#regFrmTbl { border-collapse: collapse;  width:900px; margin: 0 auto; }
				table#regFrmTbl td { border: 1px solid #000;  height: 43px; }
		</style>
	</head>
	<body>
		<div id="wrap">
			<!-- 헤더삽입 -->
	<jsp:include page="/WEB-INF/views/ind/header.jsp" />
			
			<main id="main" class="dFlex">
				
				<!-- 실제 작업 영역 시작 -->
				<div id="contents" class="joinInsert">
					<form action="/applyProc" name="regFrm" id="regFrm">
						<table id="regFrmTbl">
							<caption>회원 가입</caption>
							<tbody>
								<tr>
									<td class="req">아이디</td>
									<td>
										<input type="text" name="uid" id="uid" maxlength="20" autofocus>
										<button type="button" id="idChkBtn" class="frmBtn">ID중복확인</button>
										<span>${res != null && res != '' ? res : ''}</span>
									</td>
									<td>
										<span>영어대소문자, 숫자조합(3~20)</span>
									</td>
								</tr>
								<tr>
									<td class="req">패스워드</td>
									<td>
										<input type="password" name="upw" id="upw"
										maxlength="20">
										<input type="checkbox" id="pwView"> 비밀번호 보기
									</td>
									<td>
										<span>영어소문자/숫자, _, @, $, 5~20 </span>
									</td>
								</tr>
								<tr>
									<td class="req">패스워드 확인</td>
									<td>
										<input type="password" id="upw_Re"
										maxlength="20">
										<span id="pwChk"></span>
									</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="req">이름</td>
									<td>
										<input type="text" name="uname" id="uname"
										maxlength="20">
									</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="req">Email</td>
									<td>
										<input type="text" id="uemail_01"
											maxlength="20" size="7">
										<span>@</span>
										<input type="text" id="uemail_02"
											maxlength="40" size="10">
										
										<select id="emailDomain" class="frmDropMenu">
											<option value="">직접입력</option>
											<option>naver.com</option>
											<option>daum.net</option>
										</select>
										<button type="button" id="emailAuthBtn" class="frmBtn">인증코드받기</button>
										
										<!-- 이메일 인증영역 시작 : Authentication Code 인증코드 -->
										<div id="emailAuthArea">
											<span>인증코드 입력</span>
											<input type="text" id="emailAuth" size="25">
											<button type="button" class="frmBtn">인증하기</button>
										</div>
										<!-- div#emailAuthArea -->
										<input type="hidden" name="uemail" id="uemail">
									</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>성별</td>
									<td>
										<label>
											남 <input type="radio" name="gender" value="1">
										</label>
										<label>
											여 <input type="radio" name="gender" value="2">
										</label>
									</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>생년월일</td>
									<td>
										<input type="text" name="ubirthday" id="ubirthday"
										maxlength="6" size="8">&nbsp;&nbsp;&nbsp;&nbsp;
										<span>ex. 830815</span>
									</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>우편번호</td>
									<td>
										<input type="text" name="uzipcode" id="uzipcode"
										maxlength="7" size="7" readonly>
										<button type="button" id="findZipBtn" class="frmBtn">우편번호찾기</button>
									</td>
									<td>
										<span>우편번호 찾기 버튼을 클릭하세요.</span>
									</td>
								</tr>
								<tr>
									<td>주소</td>
									<td>
										<input type="text" name="uaddr" id="uaddr"
										maxlength="100" size="50">
									</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>취미</td>
									<td>
										<label> 인터넷
											<input type="checkbox" name="uhobby" value="인터넷">
										</label>
										<label> 여행
											<input type="checkbox" name="uhobby" value="여행">
										</label>
										<label> 게임
											<input type="checkbox" name="uhobby" value="게임">
										</label>
										<label> 영화
											<input type="checkbox" name="uhobby" value="영화">
										</label>
										<label> 운동
											<input type="checkbox" name="uhobby" value="운동">
										</label>
									</td>
									<td></td>
								</tr>
								<tr>
									<td>직업</td>
									<td>
										<select name="ujob" id="ujob" class="frmDropMenu">
											<option value="">선택</option>
											<option>교수</option>
											<option>학생</option>
											<option>회사원</option>
											<option>공무원</option>
											<option>자영업</option>
											<option>전문직</option>
											<option>주부</option>
											<option>무직</option>
										</select>
									</td>
									<td></td>
								</tr>
								<tr>
									<td colspan="3">
										<button type="submit" id="joinSbmBtn" class="frmBtn">회원가입</button>
										<button type="reset" class="frmBtn">다시쓰기</button>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					<!-- form[name=regFrm] -->
				</div>
				<!-- 실제 작업 영역 끝 -->
				
			</main>
			<!-- main#main -->
			
		<!-- 			footer 삽입 -->
			<jsp:include page="/WEB-INF/views/ind/footer.jsp" />
		</div>
		<!-- div#wrap -->
	</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		//비밀번호 유효성 검사
		$("#upw_Re").keyup(function(){
			let upw = $("#upw").val();
			let upw_Re = $("#upw_Re").val();		
			if(upw !== upw_Re){
				$("span#pwChk").text("비밀번호가 다릅니다.");
				$("#joinSbmBtn").click(function(){
					alert("비밀번호를 확인해주세요");
				});
			} else {
				$("span#pwChk").text("");
			}
		});
		
		 // 가입 버튼 클릭 시 비밀번호 확인
	    $("#joinSbmBtn").click(function() {
	        let upw = $("#upw").val();
	        let upw_Re = $("#upw_Re").val();
	        if (upw !== upw_Re) {
	            alert("비밀번호를 확인해주세요.");
	        } else {
	            // 비밀번호 확인이 성공적으로 이루어졌을 때의 처리
	        }
	    });
		
		 //아이디 중복검사
		 $("#idChkBtn").click(function(){
			 let uid = $("#uid").val();
			 
			 $("#regFrm").attr("action", "idCheck");
			 $("#regFrm").submit();
		 });
	
		
		 
	</script>
	
	
</html>