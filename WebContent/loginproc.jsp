<%@page import="coffee.MemberDTO"%>
<%@page import="coffee.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>joinproc_ȸ������ �Ķ���� ������</title>
</head>
<body>
	<jsp:useBean id="dto" class="coffee.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	<%
		MemberDAO dao = new MemberDAO();
		
	String msg = "";
	String location = "";
	
	MemberDTO mdto = dao.login(dto);
	
		if(mdto == null){
			msg = "�������� �ʴ� �����Դϴ�.";
			location = "login.jsp";
		}
		else {
			
			if(dto.getPassword().equals(mdto.getPassword())){
				msg = "�������!";
				location = "index.jsp";
				session.setAttribute("id", dto.getId());
			}
			else {
				msg = "��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
				location = "login.jsp";
			}
		}
		
	%>
	
	<script>
		alert("<%=msg %>");
		location.href="<%=location %>";
	</script>

</body>
</html>