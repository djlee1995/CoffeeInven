<%@page import="coffee.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.nav li {
	list-style-type: none;
	padding: 20px;
	font-size: 20px;
	font-weight: bold;
}
.nav li a {
	text-decoration: none;
	color: black;
}
</style>
<script type="text/javascript">
		function checkBoardfield() {
			if (document.fileForm.title.value == "") {
				alert("������ �Է��� �ּ���.");
				document.fileForm.title.focus();
				return;
			}
			if (document.fileForm.content.value == "") {
				alert("������ �Է��� �ּ���.");
				document.fileForm.content.focus();
				return;
			}
			document.fileForm.submit();
		}
	</script>
<link href="./css/join_style.css" rel="stylesheet" type="text/css">
<% 
	if(session.getAttribute("id") == null){
		response.sendRedirect("login.jsp");
		return;
	}
%>

</head>
<body>
	<div>
		<div style="background-color: #751400; padding: 20px;">
			<p style="color: white; text-align: center; font-size: 36px; font-weight: bold;">Coffee Inven</p>
			<div style="text-align: right;">
				<span><%= session.getAttribute("id")%>��</span>
				<input type="button" value="�α׾ƿ�" onclick="location.href= 'logout.jsp'">
			</div>
		</div>
		<div>
		<div id="container" style="text-align: center;">
			<div style="display: inline-block; width: 20%; ">
				<ul class="nav">
					<li><a href="#" >���</a></li>
					<li><a href="./index.jsp" >���μ���</a></li>
					<li><a href="./favorite.jsp">����ī��</a></li>
					<li><a href="./trend.jsp">Ʈ����</a></li>
					<li><a href="./recipe.jsp">������</a></li>
					<li><a href="./guide.jsp">���̵�</a></li>
					<li style="background-color: #D5D5D5; "><a href="./freeboard.jsp">�����Խ���</a></li>
				</ul>
			</div>
			<div style="display: inline-block; width: 75%; vertical-align: top; text-align: left;">
			<form name="fileForm" method="post" enctype="multipart/form-data" action="boardwriteproc.jsp" accept-charset="utf-8">
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">����</label>
					<span><input type="text" id="title" name="title" maxlength="100" style="width: 400px;"></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">����</label>
					<span><textarea rows="30" cols="100" id="content" name="content"></textarea></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">����</label>
					<span><input type="file" name="file_img"></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">������</label>
					<span><input type="file" name="file_mov"></span>
				</div>
				<div style="text-align: center;">
					<input type="hidden" value="freeboard" name="type">
					<input type="button" onclick="checkBoardfield()" value="���" >
				</div>
			</form>
			</div>
		</div>

		</div>
		<div style="background-color: #E8D9FF; text-align: right;">
			<p>������ : �̵���</p>
			<p>īī����Id : djlee95</p>
		</div>
	</div>

</body>
</html>