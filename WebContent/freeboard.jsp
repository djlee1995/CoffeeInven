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
<% if(session.getAttribute("id") == null){
	response.sendRedirect("login.jsp");
	return;
}
BoardDAO bDao = new BoardDAO();
List<BoardDTO> boardList = bDao.selectBoardList("freeboard");
%>

</head>
<body>
	<div>
		<div style="background-color: #751400; padding: 20px;">
			<p style="color: white; text-align: center; font-size: 36px; font-weight: bold;">Coffee Inven</p>
			<div style="text-align: right;">
				<% if(session.getAttribute("id") == null){ %>
				<input type="button" value="�α���" onclick="location.href= 'login.jsp'">
				<input type="button" value="ȸ������" onclick="location.href= 'join.jsp'">
				<%} else { %>
				<span><%= session.getAttribute("id")%>��</span>
				<input type="button" value="�α׾ƿ�" onclick="location.href= 'logout.jsp'">
				<%} %>
			</div>
		</div>
		<div>
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
			<div style="display: inline-block; width: 75%; vertical-align: top;">
				<div style="text-align: right;">
					<input type="button" value="�۾���" onclick="location.href='freeboardwrite.jsp'">
				</div>
				<div style="text-align: center;">
				<h2>���� �Խ���</h2>
				<div style="">
					<div>
							<span style="padding: 10px; width: 5%; display: inline-block;">�۹�ȣ</span>
							<span style="padding: 10px; width: 50%; display: inline-block;">������</span>
							<span style="padding: 10px; width: 10%; display: inline-block;">�۾���</span>
							<span style="padding: 10px; width: 13%; display: inline-block;">�۾�����</span>		
							<span style="padding: 10px; width: 10%; display: inline-block;">����</span>				
					</div>	
					<% for(BoardDTO b : boardList) {%>
					<div>
							<span style="padding: 10px; width: 5%; display: inline-block;"><%=b.getPidx() %></span>
							<span style="padding: 10px; width: 50%; display: inline-block;"><a href="./freeboarddetail.jsp?pidx=<%=b.getPidx()%>"><%=b.getTitle() %></a></span>
							<span style="padding: 10px; width: 10%; display: inline-block;"><%=b.getWriter() %></span>
							<span style="padding: 10px; width: 13%; display: inline-block;"><%=b.getReg_dtime() %></span>	
							<span style="padding: 10px; width: 10%; display: inline-block;"><input type="button" value="����" onclick="location.href = './boarddelete.jsp?pidx=<%=b.getPidx()%>&type=freeboard'"></span>					
					</div>				
					<%} %>
				</div>	        
	        
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