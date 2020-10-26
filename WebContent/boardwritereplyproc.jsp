<%@page import="coffee.MemberDTO"%>
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
	%>
	<%
	
	String writer = (String)session.getAttribute("id");
	String content = request.getParameter("content");
	String type = request.getParameter("type");
	int pidx = Integer.parseInt(request.getParameter("pidx"));
	
	BoardDAO bdao = new BoardDAO();
	bdao.insertBoardReply(type+"_r", new BoardDTO(pidx, content, writer));
	
	%>
	
	<script type="text/javascript">
	alert('정상적으로 등록되었습니다.');
	location.href = '<%=type%>'+'detail.jsp?pidx=<%=pidx%>';
	</script>
	

</body>
</html>