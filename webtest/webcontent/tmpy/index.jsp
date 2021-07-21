<%@page import="webtest.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%
DB_Connect db = new DB_Connect();
%>

<!DOCTYPE HTML>
<html>
<head>
<title>곤니찌와</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<a href="#sign" class="icon solid fa-user-plus"><span>회원가입</span></a>
	<a href="#login" class="icon solid fa-sign-in-alt"><span>로그인</span></a>
	<a href="./logout.jsp" class="icon solid fa-sign-out-alt"><span>로그아웃</span></a>
	<a href="./DeleteUser.jsp" class="icon solid fa-user-slash"><span>회원탈퇴</span></a>
	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
			<a href="#" class="icon solid fa-home"><span>홈</span></a> <a
				href="#work" class="icon solid fa-chalkboard"><span>게시판</span></a> <a
				href="#write" class="icon solid fa-chalkboard-teacher"><span>글쓰기</span></a>
			<a href="#board" class="icon solid fa-border-all"><span>게시판
					목록</span></a>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Me -->
			<article id="home" class="panel intro">
				<header>
					<h1><%=SaveId.id%>님 안녕하세요!
					</h1>
					<p>아아아아아아아아아아아아앙</p>
				</header>
				<a href="#work" class="jumplink pic"> <span
					class="arrow icon solid fa-chevron-right"><span>See
							my work</span></span> <img src="images/me.jpg" alt="" />
				</a>
			</article>

			<!-- Work -->
			<article id="work" class="panel">
				<header>
					<h2>글 보기</h2>
				</header>
				<p>아 몰랑!</p>
				<section>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic01.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic02.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic03.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic04.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic05.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic06.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic07.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic08.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic09.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic10.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic11.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic12.jpg"
								alt=""></a>
						</div>
					</div>
				</section>
			</article>

			<article id="write" class="panel">
				<header>
					<h2>게시판 등록</h2>
				</header>
				<form action="board_create.jsp" method="post">
					<div>
						<div class="row">
							<div class="col-12">
								<input type="text" name="title" placeholder="제목" />
							</div>
							<div class="col-12">
								<textarea name="boarder_text" placeholder="글 내용" rows="6"></textarea>
							</div>
							<div class="col-12">
								<input type="submit" value="등록" />
							</div>
						</div>
					</div>
				</form>
			</article>

			<article id="sign" class="panel">
				<header>
					<h2>회원 가입</h2>
				</header>
				<form action="sign.jsp" method="post">
					<div>
						<div class="row">
							<div class="col-12">
								<input type="text" name="id" placeholder="아이디" maxlength="8" />
							</div>
							<div class="col-12">
								<input type="password" name="pass" placeholder="비밀번호"
									maxlength="8" />
							</div>
							<div class="col-12">
								<input type="text" name="mail" placeholder="이메일" maxlength="20" />
							</div>
							<div class="col-12">
								<input type="text" name="name" placeholder="이름" maxlength="8" />
							</div>
							<div class="col-12">
								<textarea name="message" placeholder="자기 소개" rows="6"
									maxlength="200"></textarea>
							</div>
							<div class="col-12">
								<input type="submit" value="등록" />
							</div>
						</div>
					</div>
				</form>
			</article>

			<article id="login" class="panel">
				<header>
					<h2>로그인</h2>
				</header>
				<form action="login.jsp" method="post">
					<div>
						<div class="row">
							<div class="col-12">
								<input type="text" name="id" placeholder="아이디" />
							</div>
							<div class="col-12">
								<input type="password" name="pass" placeholder="비밀번호" />
							</div>
							<p>
								<input type="submit" value="로그인" />

								<%
								String clientId = "t_Ddzq7ghlm_ymY2DVhD";//애플리케이션 클라이언트 아이디값";
								String redirectURI = URLEncoder.encode("http://192.168.40.22:6600/ask/test/index.jsp", "UTF-8");
								SecureRandom random = new SecureRandom();
								String state = new BigInteger(130, random).toString();
								String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
								apiURL += "&client_id=" + clientId;
								apiURL += "&redirect_uri=" + redirectURI;
								apiURL += "&state=" + state;
								session.setAttribute("state", state);
								%>
								<a href="<%=apiURL%>"><img height="50"
									src="http://static.nid.naver.com/oauth/small_g_in.PNG" /></a>
						</div>
					</div>
				</form>
			</article>
			<article id="board" class="panel">
				<header>
					<h2>게시판 목록</h2>
				</header>
				<table>
					<tr>
						<td width="50">번호</td>
						<td width="200">제목</td>
						<td width="100">작성자</td>
					</tr>
					<%
					for (Item item : db.select_board_test(SaveId.id)) {
					%>

					<tr id="boarder">
						<td id="num"><%=item.getNum()%></td>
						<td id="title"><%=item.getTitle()%></td>
						<td><%=item.getId()%></td>

					</tr>

					<%
					}
					%>
				</table>
			</article>



			<article id="content_LookUp" class="panel">
				<header>
					<h2>게시판 목록</h2>
				</header>

			</article>



		</div>


		<!-- Footer -->
		<div id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>