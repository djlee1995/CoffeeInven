<%@page import="coffee.BoardDTO"%>
<%@page import="coffee.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title></title>
</head>
<body>
	<% 
	if(session.getAttribute("id") == null){
		response.sendRedirect("login.jsp");
		return;
	}
	if(request.getParameter("type") == null){
		response.sendRedirect("index.jsp");
		return;
	}
	if(request.getParameter("pidx") == null){
		response.sendRedirect("index.jsp");
		return;
	}
	%>
	<%
	
	String msg = "";
	String loginId = (String)session.getAttribute("id");
	BoardDAO bdao = new BoardDAO();
	
	String type = request.getParameter("type");
	int pidx = Integer.parseInt(request.getParameter("pidx"));
	
	BoardDTO bdto = bdao.selectBoardOne(type, pidx);
	if(bdto.getWriter().equals(loginId)){
		bdao.deleteBoard(type, pidx);
		msg = "삭제되었습니다.";
	}
	else {
		msg = "권한이 없습니다.";
	}
	%>
	
	<script type="text/javascript">
	alert('<%=msg%>');
	location.href = '<%=type%>'+'.jsp';
	</script>
	

</body>
</html>