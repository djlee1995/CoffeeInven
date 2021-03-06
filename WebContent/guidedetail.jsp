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
<link href="./css/join_style.css" rel="stylesheet" type="text/css">
<% 
	if(session.getAttribute("id") == null){
		response.sendRedirect("login.jsp");
		return;
	}
	if(request.getParameter("pidx")== null){
		response.sendRedirect("guide.jsp");
		return;
	}
System.out.println(request.getParameter("pidx"));
int pidx = Integer.parseInt((String)request.getParameter("pidx"));
BoardDAO bDao = new BoardDAO();
BoardDTO board = bDao.selectBoardOne("guide", pidx);

List<BoardDTO> boardReplyList = bDao.selectBoardReplyList("guide_r", pidx);
%>

</head>
<body>
	<div>
		<div style="background-color: #751400; padding: 20px;">
			<p style="color: white; text-align: center; font-size: 36px; font-weight: bold;">Coffee Inven</p>
			<div style="text-align: right;">
				<span><%= session.getAttribute("id")%>님</span>
				<input type="button" value="로그아웃" onclick="location.href= 'logout.jsp'">
			</div>
		</div>
		<div>
		<div id="container" style="text-align: center;">
			<div style="display: inline-block; width: 20%; ">
				<ul class="nav">
					<li><a href="#" >목록</a></li>
					<li><a href="./index.jsp" >원두설명</a></li>
					<li><a href="./favorite.jsp">유명카페</a></li>
					<li><a href="./trend.jsp">트렌드</a></li>
					<li><a href="./recipe.jsp">레시피</a></li>
					<li style="background-color: #D5D5D5; "><a href="./guide.jsp">가이드</a></li>
					<li><a href="./freeboard.jsp">자유게시판</a></li>
				</ul>
			</div>
			<div style="display: inline-block; width: 75%; vertical-align: top; text-align: left;">
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">제목</label>
					<span><%=board.getTitle() %></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">글쓴이</label>
					<span><%=board.getWriter() %></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">내용</label>
					<span><%=board.getContent() %></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">사진</label>
					<span><img src="./file/<%=board.getFile_img() %>" width="300px;"></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">동영상</label>
					<span><video src = './file/<%=board.getFile_mov() %>' width='400' controls autoplay></video></span>
				</div>
				<div style="padding: 30px;">
					<label style="font-weight: bold; font-size: 20px; margin-right: 15px; vertical-align: top;">댓글</label>
					<% for(BoardDTO rdto : boardReplyList) {%>
					<div>
						<p><%=rdto.getContent() %> | <%=rdto.getWriter() %> | <%=rdto.getReg_dtime() %></p>
						<input type="button" value="삭제" onclick="location.href = 'boardreplydelete.jsp?ridx=<%=rdto.getRidx()%>&type=guide&pidx=<%=rdto.getPidx()%>'">
					</div>
					<%} %>
				</div>
				<div style="padding: 30px;">
					<input type="button" value="댓글등록" onclick="location.href = './guidereplywrite.jsp?pidx=<%=board.getPidx()%>'">
				</div>
			</div>
		</div>

		</div>
		<div style="background-color: #E8D9FF; text-align: right;">
			<p>만든사람 : 이동준</p>
			<p>카카오톡Id : djlee95</p>
		</div>
	</div>

</body>
</html>