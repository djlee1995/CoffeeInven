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
	
		if(dao.login(dto) == null){
			dao.insert(dto);
			session.setAttribute("id", dto.getId());
			
			msg = "ȸ�����Կ� �����߽��ϴ�.";
			location = "index.jsp";
		}
		else {
			msg = "�̹� �����ϴ� ID�Դϴ�.";
			location = "index.jsp";
		}
		
		
	%>
	
	<script>
		alert("<%=msg %>");
		location.href="<%=location %>";
	</script>

</body>
</html>