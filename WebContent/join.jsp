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
				alert("���̵� �Է��� �ּ���.");
				document.joinFrm.id.focus();
				return;
			}
			if (document.joinFrm.password.value == "") {
				alert("��й�ȣ�� �Է��� �ּ���.");
				document.joinFrm.password.focus();
				return;
			}
			if (document.joinFrm.pw_check.value == "") {
				alert("��й�ȣ�� �Է��� �ּ���.");
				document.joinFrm.pw_check.focus();
				return;
			}
			if(document.joinFrm.password.value != document.joinFrm.pw_check.value){
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				document.joinFrm.pw_check.focus();
				return;
			}
			if (document.joinFrm.name.value == "") {
				alert("�̸��� �Է��� �ּ���.");
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
				<input type="button" value="�α���" onclick="location.href= 'login.jsp'">
				<input type="button" value="ȸ������" onclick="location.href= 'join.jsp'">
			</div>
		</div>
		<div>
			<form action="joinproc.jsp" method="post" name="joinFrm" accept-charset="utf-8">
				<div id="container" style="text-align: center;">
					<!-- container�κ� -->
					<div id="content">
						<!-- content�κ� => join_up,join_cen01,join_cen02,join_under -->
						<div id="join_up">
							<!-- ���̵�, ���, ���Ȯ�� -->
							<div class="join_id">
								<h3 class="join_title">
									<label for="id">���̵�</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="text" id="id" name="id" class="int" title="id" maxlength="20" placeholder="���̵� �Է�">
									</span>
								</div>
							</div>
							<div class="join_pw">
								<h3 class="join_title">
									<label for="pw">��й�ȣ</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="password" id="password" name="password" class="int" title="pw" maxlength="40" placeholder="��й�ȣ �Է�">
									</span>
								</div>
							</div>
							<div class="join_pw_check">
								<h3 class="join_title">
									<label for="pw_check">��й�ȣ ��Ȯ��</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="password" id="pw_check" name="pw_check" class="int" title="pw_check" maxlength="40" placeholder="��й�ȣ ��Ȯ��">
									</span>
								</div>
							</div>
						</div>
						<div id="join_con01">
							<!-- �̸�, �������, ����, �̸��� -->
							<div class="join_name">
								<h3 class="join_title">
									<label for="name">�̸�</label>
								</h3>
								<div class="input_row">
									<span class="join_int"> <input type="text" id="name" name="name" class="int" title="name" maxlength="20" placeholder="�̸� �Է�">
									</span>
								</div>
							</div>
						</div>
						<input type="button" title="�����ϱ�" alt="�����ϱ�" value="�����ϱ�" class="btn_login" id="log.login" onclick="checkJoinfield()">
						<!-- �����ϱ� -->
						<div id="join_con03">
							<div class="under_info">
								<a href="index.jsp">��������</a> <span class="bar">��</span> 
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<div style="background-color: #E8D9FF; text-align: right;">
			<p>������ : �̵���</p>
			<p>īī����Id : djlee95</p>
		</div>
	</div>

</body>
</html>