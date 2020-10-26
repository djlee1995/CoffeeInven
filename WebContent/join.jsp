<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="./css/join_style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
		function checkJoinfield() {
			if (document.joinFrm.id.value == "") {
				alert("아이디를 입력해 주세요.");
				document.joinFrm.id.focus();
				return;
			}
			if (document.joinFrm.password.value == "") {
				alert("비밀번호를 입력해 주세요.");
				document.joinFrm.password.focus();
				return;
			}
			if (document.joinFrm.pw_check.value == "") {
				alert("비밀번호를 입력해 주세요.");
				document.joinFrm.pw_check.focus();
				return;
			}
			if(document.joinFrm.password.value != document.joinFrm.pw_check.value){
				alert("비밀번호가 일치하지 않습니다.");
				document.joinFrm.pw_check.focus();
				return;
			}
			if (document.joinFrm.name.value == "") {
				alert("이름을 입력해 주세요.");
				document.joinFrm.name.focus();
				return;
			}
			document.joinFrm.submit();
		}
	</script>
</head>
<body>
	<div>
		<div style="background-color: #751400; padding: 20px;">
			<p style="color: white; text-align: center; font-size: 36px; font-weight: bold;">Coffee Inven</p>
			<div style="text-align: right;">
				<input type="button" value="로그인" onclick="location.href= 'login.jsp'">
				<input type="button" value="회원가입" onclick="location.href= 'join.jsp'">
			</div>
		</div>
		<div>
			<form action="joinproc.jsp" method="post" name="joinFrm" accept-charset="utf-8">
				<div id="container" style="text-align: center;">
					<!-- container부분 -->
					<div id="content">
						<!-- content부분 => join_up,join_cen01,join_cen02,join_under -->
						<div id="join_up">
							<!-- 아이디, 비번, 비번확인 -->
							<div class="join_id">
								<h3 class="join_title">
									<label for="id">아이디</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="text" id="id" name="id" class="int" title="id" maxlength="20" placeholder="아이디 입력">
									</span>
								</div>
							</div>
							<div class="join_pw">
								<h3 class="join_title">
									<label for="pw">비밀번호</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="password" id="password" name="password" class="int" title="pw" maxlength="40" placeholder="비밀번호 입력">
									</span>
								</div>
							</div>
							<div class="join_pw_check">
								<h3 class="join_title">
									<label for="pw_check">비밀번호 재확인</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="password" id="pw_check" name="pw_check" class="int" title="pw_check" maxlength="40" placeholder="비밀번호 재확인">
									</span>
								</div>
							</div>
						</div>
						<div id="join_con01">
							<!-- 이름, 생년월일, 성별, 이메일 -->
							<div class="join_name">
								<h3 class="join_title">
									<label for="name">이름</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="text" id="name" name="name" class="int" title="name" maxlength="20" placeholder="이름 입력">
									</span>
								</div>
							</div>
						</div>
						<input type="button" title="가입하기" alt="가입하기" value="가입하기" class="btn_login" id="log.login" onclick="checkJoinfield()">
						<!-- 가입하기 -->
						<div id="join_con03">
							<div class="under_info">
								<a href="index.jsp">메인으로</a> <span class="bar">ㅣ</span> 
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<div style="background-color: #E8D9FF; text-align: right;">
			<p>만든사람 : 이동준</p>
			<p>카카오톡Id : djlee95</p>
		</div>
	</div>

</body>
</html>