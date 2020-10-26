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
				<input type="button" value="로그인" onclick="location.href= 'login.jsp'">
				<input type="button" value="회원가입" onclick="location.href= 'join.jsp'">
				<%} else { %>
				<span><%= session.getAttribute("id")%>님</span>
				<input type="button" value="로그아웃" onclick="location.href= 'logout.jsp'">
				<%} %>
			</div>
		</div>
		<div >
			<% if(session.getAttribute("id") == null){  %>
			<p>만든이유</p>
			<% } else { %>
			<div style="display: inline-block; width: 20%; float: left;">
				<ul class="nav">
					<li><a href="#" >목록</a></li>
					<li style="background-color: #D5D5D5; "><a href="./index.jsp" >원두설명</a></li>
					<li><a href="./favorite.jsp">유명카페</a></li>
					<li><a href="./trend.jsp">트렌드</a></li>
					<li><a href="./recipe.jsp">레시피</a></li>
					<li><a href="./guide.jsp">가이드</a></li>
					<li><a href="./freeboard.jsp">자유게시판</a></li>
				</ul>
			</div>
			<div style="display: inline-block; width: 75%;">
				<h2>원두 설명</h2>
				<div>	
					<h4>세계 3대 원두를 아시나요?</h4>
					<p>커피의 3대 원두 종류라면 아라비카, 로부스타, 리베리카를 말합니다.
현재 95%의 원두가 아라비카와 로부스타가 차지하고, 현재 리베리카는 거의 생산되지 않습니다.
일반 카페에서 사용되는 원두는 아라비카이고 인스턴트 커피에 들어가는 건 로부스타라고 생각하시면 됩니다,
					</p>
					<h4>원두의 6대 요소?</h4>
					<p>신맛, 단맛, 쓴맛, 아로마, 플레이버, 바디감입니다.
원두 생산지의 환경과 해발 고도, 로스팅 정도에 따라서도 차이를 보입니다.
아로마는 입에 넣기전 코로 맡는 향, 플레이버(풍미)는 입 안에서 느껴지는 향, 바디감은 입에 머금었을 때에 밀도를 뜻합니다.</p>
					<h4>생산지의 따라 다른 원두의 향은?</h4>
					<p>아프리카산 커피-> 상큼한 향 <br>
라틴아메리카산 커피 -> 부드럽고 마일드한 향과 느낌 <br>
인도네시아산 커피-> 중후하고 묵직한 느낌</p>
					<h4>많이 사용하는 원두?</h4>
					<div style="text-align: center; padding: 20px;">
						<div style="display: inline-block; margin-left: 100px; margin-right: 100px;">
							<img alt="아프리카를 대표하는 고급 커피 중 하나로 초콜릿 향과 중후한 바디감이 특징이며
쌉쌉할 쓴맛을 가지고 있음" src="./img/Kenya.jpg" width="150px" height="200px" title="아프리카를 대표하는 고급 커피 중 하나로 초콜릿 향과 중후한 바디감이 특징이며
쌉쌉할 쓴맛을 가지고 있음">
							<p>케냐AA</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="깔끔하면서 부드러운 신맛과 고구마 맛이 난다고 함. 신맛이 강한편" src="./img/Ethiopia.jpg" width="150px" height="200px" title="깔끔하면서 부드러운 신맛과 고구마 맛이 난다고 함. 신맛이 강한편">
							<p>에티오피아 예가체프</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="영국 왕실에 납품되는 제품으로 유명. 향이 부드럽고 쓴맛이 덜함." src="./img/Jamaica.png" width="150px" height="200px" title="영국 왕실에 납품되는 제품으로 유명. 향이 부드럽고 쓴맛이 덜함.">
							<p>자메이카 블루마운틴</p>
						</div>
					</div>
					<div style="text-align: center; padding: 20px;">
						<div style="display: inline-block; margin-left: 100px; margin-right: 100px;">
							<img alt="스모크 향이나는 스모크 커피의 대표적인 커피. 중후한 바디감과 
다크 초콜릿 맛이 나며 끝 맛이 개운함." src="./img/Guatemala.jpg" width="150px" height="200px" title="스모크 향이나는 스모크 커피의 대표적인 커피. 중후한 바디감과 
다크 초콜릿 맛이 나며 끝 맛이 개운함.">
							<p>과테말라 안티구아</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="부드럽고 구수한 커피향과 약간의 신맛, 쓴맛, 단맛이 조화로운 대중적인 커피" src="./img/Colombia.jpg" width="150px" height="200px" title="부드럽고 구수한 커피향과 약간의 신맛, 쓴맛, 단맛이 조화로운 대중적인 커피">
							<p>콜롬비아 수프리모</p>
						</div>
						<div style="display: inline-block;  margin-left: 100px; margin-right: 100px;">
							<img alt="부드럽고 구수하며 산미가 적고 향이 약해 블렌딩에 많이 이용." src="./img/Brazil.jpg" width="150px" height="200px" title="부드럽고 구수하며 산미가 적고 향이 약해 블렌딩에 많이 이용.">
							<p>브라질 산토스</p>
						</div>
					</div>
				</div>
				<div>
				
				</div>
			</div>
			
			<%} %>
		</div>
		<div style="background-color: #E8D9FF; text-align: right;">
			<p>만든사람 : 이동준</p>
			<p>카카오톡Id : djlee95</p>
		</div>
	</div>

</body>
</html>