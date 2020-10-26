<%@page import="coffee.BoardDTO"%>
<%@page import="coffee.BoardDAO"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
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
	 ServletContext context = getServletContext();

	 String uploadPath = "./file";
		uploadPath = context.getRealPath(uploadPath);
	//업로드 파일 최대 크기 지정
	int size = 100*1024*1024; 
	
	 String imgFileName, movFileName, title, content, writer, type;
	 
	 writer = (String)session.getAttribute("id");
	 
	 MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
		
	 title = multi.getParameter("title");
	 content = multi.getParameter("content");
	 
	imgFileName = multi.getFilesystemName("file_img");
	movFileName = multi.getFilesystemName("file_mov");
	
	type = multi.getParameter("type");
	
	/*  if(request.getParameter("file_img") == null && request.getParameter("file_mov") == null){
		 
		 title = request.getParameter("title");
		 content = request.getParameter("content");
		 imgFileName = "";
		 movFileName = "";
		 type = request.getParameter("type");
	 }
	 else {
		 MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			
		 title = multi.getParameter("title");
		 content = multi.getParameter("content");
		 
		imgFileName = multi.getFilesystemName("file_img");
		movFileName = multi.getFilesystemName("file_mov");
		
		type = multi.getParameter("type");
	 } */
	
	BoardDAO bdao = new BoardDAO();

	bdao.insertBoard(type, new BoardDTO(title, content, imgFileName, movFileName, writer));
	
	%>
	
	<script type="text/javascript">
	alert('정상적으로 등록되었습니다.');
	location.href = '<%=type%>'+'.jsp';
	</script>
	

</body>
</html>