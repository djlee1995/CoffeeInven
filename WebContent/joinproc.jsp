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
	<title>joinproc_회원가입 파라미터 페이지</title>
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
			
			msg = "회원가입에 성공했습니다.";
			location = "index.jsp";
		}
		else {
			msg = "이미 존재하는 ID입니다.";
			location = "index.jsp";
		}
		
		
	%>
	
	<script>
		alert("<%=msg %>");
		location.href="<%=location %>";
	</script>

</body>
</html>