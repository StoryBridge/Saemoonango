<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (request.getProtocol().equals("HTTP/1.1"))
		response.setHeader("Cache-Control", "no-cache");
%>

<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<base href="resources/">
<title>SaemoonanGo</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
<link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/resume.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/animate.css@3.5.2/animate.css" type="text/css" />
<link rel="stylesheet" href="https://unpkg.com/rmodal@1.0.28/dist/rmodal.css" type="text/css" />
<link rel='stylesheet' href='css/Nwagon.css' type='text/css'>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Plugin JavaScript -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for this template -->
<script src="js/resume.min.js"></script>


<script type="text/javascript" src="vendor/jquery/rmodal.js"></script>
<style type="text/css">
.modal .modal-dialog {
	width: 400px;
	margin-top: 60;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		var modal = new RModal(document.getElementById('modal'), {
			//content: 'Abracadabra'
			beforeOpen : function(next) {
				//console.log("모달 오픈");
				//console.log(sessionStorage.getItem("modalFlag"));
				sessionStorage.removeItem("modalFlag");
				sessionStorage.setItem("modalFlag", true);
				//console.log(sessionStorage.getItem("modalFlag"));
				//console.log('beforeOpen');
				next();
			},
			afterOpen : function() {
				//console.log('opened');
			},
			beforeClose : function(next) {
				//console.log('beforeClose');
				next();
			},
			afterClose : function() {
				//console.log('afterClosed');
				sessionStorage.removeItem("modalFlag");
				sessionStorage.setItem("modalFlag", false);
			}
			// , bodyClass: 'modal-open'
			// , dialogClass: 'modal-dialog'
			// , dialogOpenClass: 'animated fadeIn'
			// , dialogCloseClass: 'animated fadeOut'

			// , focus: true
			// , focusElements: ['input.form-control', 'textarea', 'button.btn-primary']

		// , escapeClose: true
		});

		document.addEventListener('keydown', function(ev) {
			modal.keydown(ev);
		}, false);

		document.getElementById('showModal').addEventListener("click",
			function(ev) {
				ev.preventDefault();
			//여기서부터!! 20180404modal.open();
			}, false);
		document
			.getElementById('commit')
			.addEventListener(
				"click",
				function(ev) {
					ev.preventDefault();
					let getAnswer = $("#answer").val();
					let rightAnswer = $('#rightAnswer').html();
					let point = $('#point').html();
					let Qno = $('#Qno').html();
					//console.log("commit answer: "+ getAnswer);					
					//console.log("rightAnswer is "+rightAnswer);
					if (rightAnswer == getAnswer) {
						//console.log("정답"); //여기 확인 2018-0421
						$.ajaxSettings.traditional = true;
						$
							.ajax({
								type : "POST",
								url : "/answer",
								data : {
									getPoint : point,
									//Id 수정 해야함
									Id : "zzennam",
									Qno : Qno
								},
								contentType : "application/x-www-form-urlencoded; charset=utf-8",
								dataType : "json",
								success : function(data) {
									//Ajax 성공시
									console.log("POST SUCCESS");
									console.log(data.already);
									alert(data.already);
								//modal.open(); 나중에 모달로 바꾸자
								},
								error : function() {
									//Ajax 실패시
									console.log("POST FAIL");
									alert("전송 실패");
								}
							});
					} else {
						//console.log("원점수: " + point);
						point -= 1;
						//console.log("적용 점수: "+ point);
						document.getElementById("point").innerHTML = point;
						ev.preventDefault();
						sessionStorage.removeItem("modalFlag");
						sessionStorage.setItem("modalFlag", false);
						alert("땡");
					}
				}, false);
		window.modal = modal;
	}
</script>
</head>

<body id="page-top">

	<div id="modal" class="modal">
		<div class="modal-dialog animated">
			<div class="modal-content">
				<form class="form-horizontal" method="get">
					<div class="modal-header" id="modal-header"></div>

					<div class="modal-body">
						<div class="form-group">
							<label for="dummyText" id="question" class="control-label col-xs-4"></label>
							<div class="input-group col-xs-7">
								<input type="text" name="answer" id="answer" class="form-control" />
							</div>
						</div>
					</div>
					<p hidden id="rightAnswer"></p>
					<p hidden id="Qno"></p>
					<div class="modal-footer">
						<button class="btn btn-primary" type="submit" id="commit" onclick="modal.close();">Commit</button>
						<button class="btn btn-default" type="button" onclick="modal.close();">Cancel</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav" style="">
		<a class="navbar-brand js-scroll-trigger" href="#page-top"> <span class="d-block d-lg-none">Start Bootstrap</span> <span class="d-none d-lg-block"> <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/profile.jpg" alt="">
		</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#lank">LANK</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#mapMenu">MAP</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#item">ITEM</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#chat">CHAT</a></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid p-0">

		<div id="map" style="width: 100%; height: 350px;"></div>
		<p>${already}</p>
		<div class="row">
			<div class="col-lg-12">
				<a href="#" id="showModal" class="btn btn-success">Show modal</a>
			</div>
		</div>



		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="chart">
			<!-- <div id="chart" class="my-auto"></div> -->
			<!-- <div class="my-auto">
				<h1 class="mb-0">
					Clarence <span class="text-primary">Taylor</span>
				</h1>
				<div class="subheading mb-5">
					3542 Berry Street · Cheyenne Wells, CO 80810 · (317) 585-8468 · <a href="mailto:name@email.com">name@email.com</a>
				</div>
				<p class="mb-5">I am experienced in leveraging agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.</p>

			</div> -->
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="mapMenu">
			<div id="map" style="width: 100%; height: 350px;"></div>
			<div class="my-auto">
				<h2 class="mb-5">Experience</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Senior Web Developer</h3>
						<div class="subheading mb-3">Intelitec Solutions</div>
						<p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">March 2013 - Present</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Developer</h3>
						<div class="subheading mb-3">Intelitec Solutions</div>
						<p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">December 2011 - March 2013</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Junior Web Designer</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">July 2010 - December 2011</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Design Intern</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">September 2008 - June 2010</span>
					</div>
				</div>

			</div>

		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="item">
			<div class="my-auto">
				<h2 class="mb-5">Education</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">University of Colorado Boulder</h3>
						<div class="subheading mb-3">Bachelor of Science</div>
						<div>Computer Science - Web Development Track</div>
						<p>GPA: 3.23</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">August 2006 - May 2010</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">James Buchanan High School</h3>
						<div class="subheading mb-3">Technology Magnet Program</div>
						<p>GPA: 3.56</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">August 2002 - May 2006</span>
					</div>
				</div>

			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="chat">
			<div class="my-auto">
				<h2 class="mb-5">Skills</h2>

				<div class="subheading mb-3">Programming Languages &amp; Tools</div>
				<ul class="list-inline list-icons">
					<li class="list-inline-item"><i class="devicons devicons-html5"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-css3"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-javascript"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-jquery"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-sass"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-less"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-bootstrap"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-wordpress"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-grunt"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-gulp"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-npm"></i></li>
				</ul>

				<div class="subheading mb-3">Workflow</div>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-check"></i> Mobile-First, Responsive Design</li>
					<li><i class="fa-li fa fa-check"></i> Cross Browser Testing &amp; Debugging</li>
					<li><i class="fa-li fa fa-check"></i> Cross Functional Teams</li>
					<li><i class="fa-li fa fa-check"></i> Agile Development &amp; Scrum</li>
				</ul>
			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
			<div class="my-auto">
				<h2 class="mb-5">Interests</h2>
				<p>Apart from being a web developer, I enjoy most of my time being outdoors. In the winter, I am an avid skiier and novice ice climber. During the warmer months here in Colorado, I enjoy mountain biking, free climbing, and kayaking.</p>
				<p class="mb-0">When forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I am an aspiring chef, and I spend a large amount of my free time exploring the latest technolgy advancements in the front-end web development world.</p>
			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
			<div class="my-auto">
				<h2 class="mb-5">Awards &amp; Certifications</h2>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-trophy text-warning"></i> Google Analytics Certified Developer</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> Mobile Web Specialist - Google Certification</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup> Place - University of Colorado Boulder - Emerging Tech Competition 2009</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup> Place - University of Colorado Boulder - Adobe Creative Jam 2008 (UI Design Category)</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 2<sup>nd</sup> Place - University of Colorado Boulder - Emerging Tech Competition 2008</li>
					<li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup> Place - James Buchanan High School - Hackathon 2006</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 3<sup>rd</sup> Place - James Buchanan High School - Hackathon 2005</li>
				</ul>
			</div>
		</section>
	</div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b5474cbf83da15f638ea76b63ed04c3"></script>
	<script src="js/displayMap.js"></script>
	<%--<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c370f01b5f96b5d7588b834370912c25"></script> --%>

	<script src="js/host.js"></script>
	<script src="js/home.js"></script>
	<script src="js/location.js"></script>
	<script src="js/member.js"></script>
	<script src='js/Nwagon.js'></script>
	<script src="js/chart.js?ver=1"></script>


	<script>
		let lat;
		let lng;
		$(document).ready(function() {
			//let timestamp = new Date().getTime();
			//console.log("****************************");
			//console.log("시작 시간: " + timestamp);
			// Geolocation API에 액세스할 수 있는지를 확인
			if (navigator.geolocation) {
				///위치 정보를 얻기
				navigator.geolocation.getCurrentPosition(function(pos) {
					$('#latitude').html(pos.coords.latitude); // 위도
					$('#longitude').html(pos.coords.longitude); // 경도
					let distance;
					let disX = 37.446896 - 37.4469025;
					let disY = 127.143955 - 127.14405579999999;
					//최소거리 0.0001
					//console.log(Math.sqrt(Math.abs(disX * disX) + Math.abs(disY * disY)));
					//let timestamp2 = new Date().getTime();
					//console.log("****************************");
					//console.log("위도 경도 얻는 시간: " + (timestamp2 - timestamp));
	
					lat = pos.coords.latitude;
					lng = pos.coords.longitude;
					//console.log(lat);
					//console.log(lng);
					//지도부분
					//가정하기 사거리
					//lng = 127.145425;
					//lat = 37.44631;
	
					//lat = 37.443663;
					//lng = 127.141979;
					//가정하기 이마트
					//lng = 127.141704;
					//lat = 37.444107;
	
					lng = 127.145604;
					lat = 37.450152;
	
					let id = 4;
	
					//lock 걸기 time 계속 안돌게
					sessionStorage.setItem("modalFlag", false);
					sessionStorage.setItem("firstMapFlag", true);
					//playAlert = setInterval(function() {
					lat = lat + 0.001;
					lng = lng - 0.001;
					//let modalFlag = sessionStorage.getItem("modalFlag");
					//if (modalFlag == "false") {
					displayMap(lat, lng);
					myLocation(lat, lng, id);
					chartData();
					//}
					//}, 5000);
	
				//console.log("getJson Data Start");
				// 게임 문답부분
				//questionManager();
				});
			} else {
				alert("이환경에서는 실행이 불가능합니다 -LSH");
			}
	
		});
	</script>

</body>

</html>
