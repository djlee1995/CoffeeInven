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
		<div >
			<% if(session.getAttribute("id") == null){  %>
			<p>��������</p>
			<% } else { %>
			<div style="display: inline-block; width: 20%; float: left;">
				<ul class="nav">
					<li><a href="#" >���</a></li>
					<li style="background-color: #D5D5D5; "><a href="./index.jsp" >���μ���</a></li>
					<li><a href="./favorite.jsp">����ī��</a></li>
					<li><a href="./trend.jsp">Ʈ����</a></li>
					<li><a href="./recipe.jsp">������</a></li>
					<li><a href="./guide.jsp">���̵�</a></li>
					<li><a href="./freeboard.jsp">�����Խ���</a></li>
				</ul>
			</div>
			<div style="display: inline-block; width: 75%;">
				<h2>���� ����</h2>
				<div>	
					<h4>���� 3�� ���θ� �ƽó���?</h4>
					<p>Ŀ���� 3�� ���� ������� �ƶ��ī, �κν�Ÿ, ������ī�� ���մϴ�.
���� 95%�� ���ΰ� �ƶ��ī�� �κν�Ÿ�� �����ϰ�, ���� ������ī�� ���� ������� �ʽ��ϴ�.
�Ϲ� ī�信�� ���Ǵ� ���δ� �ƶ��ī�̰� �ν���Ʈ Ŀ�ǿ� ���� �� �κν�Ÿ��� �����Ͻø� �˴ϴ�,
					</p>
					<h4>������ 6�� ���?</h4>
					<p>�Ÿ�, �ܸ�, ����, �Ʒθ�, �÷��̹�, �ٵ��Դϴ�.
���� �������� ȯ��� �ع� ��, �ν��� ������ ���󼭵� ���̸� ���Դϴ�.
�Ʒθ��� �Կ� �ֱ��� �ڷ� �ô� ��, �÷��̹�(ǳ��)�� �� �ȿ��� �������� ��, �ٵ��� �Կ� �ӱݾ��� ���� �е��� ���մϴ�.</p>
					<h4>�������� ���� �ٸ� ������ ����?</h4>
					<p>������ī�� Ŀ��-> ��ŭ�� �� <br>
��ƾ�Ƹ޸�ī�� Ŀ�� -> �ε巴�� ���ϵ��� ��� ���� <br>
�ε��׽þƻ� Ŀ��-> �����ϰ� ������ ����</p>
					<h4>���� ����ϴ� ����?</h4>
					<div style="text-align: center; padding: 20px;">
						<div style="display: inline-block; margin-left: 100px; margin-right: 100px;">
							<img alt="������ī�� ��ǥ�ϴ� ��� Ŀ�� �� �ϳ��� ���ݸ� ��� ������ �ٵ��� Ư¡�̸�
�Խ��� ������ ������ ����" src="./img/Kenya.jpg" width="150px" height="200px" title="������ī�� ��ǥ�ϴ� ��� Ŀ�� �� �ϳ��� ���ݸ� ��� ������ �ٵ��� Ư¡�̸�
�Խ��� ������ ������ ����">
							<p>�ɳ�AA</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="����ϸ鼭 �ε巯�� �Ÿ��� ���� ���� ���ٰ� ��. �Ÿ��� ������" src="./img/Ethiopia.jpg" width="150px" height="200px" title="����ϸ鼭 �ε巯�� �Ÿ��� ���� ���� ���ٰ� ��. �Ÿ��� ������">
							<p>��Ƽ���Ǿ� ����ü��</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="���� �սǿ� ��ǰ�Ǵ� ��ǰ���� ����. ���� �ε巴�� ������ ����." src="./img/Jamaica.png" width="150px" height="200px" title="���� �սǿ� ��ǰ�Ǵ� ��ǰ���� ����. ���� �ε巴�� ������ ����.">
							<p>�ڸ���ī ��縶��ƾ</p>
						</div>
					</div>
					<div style="text-align: center; padding: 20px;">
						<div style="display: inline-block; margin-left: 100px; margin-right: 100px;">
							<img alt="����ũ ���̳��� ����ũ Ŀ���� ��ǥ���� Ŀ��. ������ �ٵ𰨰� 
��ũ ���ݸ� ���� ���� �� ���� ������." src="./img/Guatemala.jpg" width="150px" height="200px" title="����ũ ���̳��� ����ũ Ŀ���� ��ǥ���� Ŀ��. ������ �ٵ𰨰� 
��ũ ���ݸ� ���� ���� �� ���� ������.">
							<p>���׸��� ��Ƽ����</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="�ε巴�� ������ Ŀ����� �ణ�� �Ÿ�, ����, �ܸ��� ��ȭ�ο� �������� Ŀ��" src="./img/Colombia.jpg" width="150px" height="200px" title="�ε巴�� ������ Ŀ����� �ణ�� �Ÿ�, ����, �ܸ��� ��ȭ�ο� �������� Ŀ��">
							<p>�ݷҺ�� ��������</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="�ε巴�� �����ϸ� ��̰� ���� ���� ���� ������ ���� �̿�." src="./img/Brazil.jpg" width="150px" height="200px" title="�ε巴�� �����ϸ� ��̰� ���� ���� ���� ������ ���� �̿�.">
							<p>����� ���佺</p>
						</div>
					</div>
				</div>
				<div>
				
				</div>
			</div>
			
			<%} %>
		</div>
		<div style="background-color: #E8D9FF; text-align: right;">
			<p>������ : �̵���</p>
			<p>īī����Id : djlee95</p>
		</div>
	</div>

</body>
</html>