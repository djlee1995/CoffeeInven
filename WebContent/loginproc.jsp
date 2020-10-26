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
	<title>joinproc_회원가입 파라미터 페이지</title>
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
			msg = "존재하지 않는 계정입니다.";
			location = "login.jsp";
		}
		else {
			
			if(dto.getPassword().equals(mdto.getPassword())){
				msg = "어서오세요!";
				location = "index.jsp";
				session.setAttribute("id", dto.getId());
			}
			else {
				msg = "비밀번호가 일치하지 않습니다.";
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