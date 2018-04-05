<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<base href="resources/">
<title>Resume - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/resume.min.css" rel="stylesheet">
<style type="text/css">
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		<a class="navbar-brand js-scroll-trigger" href="#page-top"> <span
			class="d-block d-lg-none">Start Bootstrap</span> <span
			class="d-none d-lg-block"> <img
				class="img-fluid img-profile rounded-circle mx-auto mb-2"
				src="img/profile.jpg" alt="">
		</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#lank">LANK</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#mapMenu">MAP</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#item">ITEM</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#chat">CHAT</a></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid p-0">

		<div id="map" style="width: 100%; height: 350px;"></div>

		<!-- Trigger/Open The Modal -->
		<button id="myBtn">Open Modal</button>
		
		<!-- The Modal -->
		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
				<span class="close">&times;</span>
				<p>Some text in the Modal..</p>
			</div>

		</div>
		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="lank">
			<div class="my-auto">


				<h1 class="mb-0">
					Clarence <span class="text-primary">Taylor</span>
				</h1>
				<div class="subheading mb-5">
					3542 Berry Street · Cheyenne Wells, CO 80810 · (317) 585-8468 · <a
						href="mailto:name@email.com">name@email.com</a>
				</div>
				<p class="mb-5">I am experienced in leveraging agile frameworks
					to provide a robust synopsis for high level overviews. Iterative
					approaches to corporate strategy foster collaborative thinking to
					further the overall value proposition.</p>

			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="mapMenu">
			<div id="map" style="width: 100%; height: 350px;"></div>
			<div class="my-auto">
				<h2 class="mb-5">Experience</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Senior Web Developer</h3>
						<div class="subheading mb-3">Intelitec Solutions</div>
						<p>Bring to the table win-win survival strategies to ensure
							proactive domination. At the end of the day, going forward, a new
							normal that has evolved from generation X is on the runway
							heading towards a streamlined cloud solution. User generated
							content in real-time will have multiple touchpoints for
							offshoring.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">March 2013 - Present</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Developer</h3>
						<div class="subheading mb-3">Intelitec Solutions</div>
						<p>Capitalize on low hanging fruit to identify a ballpark
							value added activity to beta test. Override the digital divide
							with additional clickthroughs from DevOps. Nanotechnology
							immersion along the information highway will close the loop on
							focusing solely on the bottom line.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">December 2011 - March 2013</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Junior Web Designer</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Podcasting operational change management inside of
							workflows to establish a framework. Taking seamless key
							performance indicators offline to maximise the long tail. Keeping
							your eye on the ball while performing a deep dive on the start-up
							mentality to derive convergence on cross-platform integration.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">July 2010 - December 2011</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Design Intern</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Collaboratively administrate empowered markets via
							plug-and-play networks. Dynamically procrastinate B2C users after
							installed base benefits. Dramatically visualize customer directed
							convergence without revolutionary ROI.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">September 2008 - June 2010</span>
					</div>
				</div>

			</div>

		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="item">
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

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="chat">
			<div class="my-auto">
				<h2 class="mb-5">Skills</h2>

				<div class="subheading mb-3">Programming Languages &amp; Tools</div>
				<ul class="list-inline list-icons">
					<li class="list-inline-item"><i
						class="devicons devicons-html5"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-css3"></i>
					</li>
					<li class="list-inline-item"><i
						class="devicons devicons-javascript"></i></li>
					<li class="list-inline-item"><i
						class="devicons devicons-jquery"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-sass"></i>
					</li>
					<li class="list-inline-item"><i class="devicons devicons-less"></i>
					</li>
					<li class="list-inline-item"><i
						class="devicons devicons-bootstrap"></i></li>
					<li class="list-inline-item"><i
						class="devicons devicons-wordpress"></i></li>
					<li class="list-inline-item"><i
						class="devicons devicons-grunt"></i></li>
					<li class="list-inline-item"><i class="devicons devicons-gulp"></i>
					</li>
					<li class="list-inline-item"><i class="devicons devicons-npm"></i>
					</li>
				</ul>

				<div class="subheading mb-3">Workflow</div>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-check"></i> Mobile-First, Responsive
						Design</li>
					<li><i class="fa-li fa fa-check"></i> Cross Browser Testing
						&amp; Debugging</li>
					<li><i class="fa-li fa fa-check"></i> Cross Functional Teams</li>
					<li><i class="fa-li fa fa-check"></i> Agile Development &amp;
						Scrum</li>
				</ul>
			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="interests">
			<div class="my-auto">
				<h2 class="mb-5">Interests</h2>
				<p>Apart from being a web developer, I enjoy most of my time
					being outdoors. In the winter, I am an avid skiier and novice ice
					climber. During the warmer months here in Colorado, I enjoy
					mountain biking, free climbing, and kayaking.</p>
				<p class="mb-0">When forced indoors, I follow a number of sci-fi
					and fantasy genre movies and television shows, I am an aspiring
					chef, and I spend a large amount of my free time exploring the
					latest technolgy advancements in the front-end web development
					world.</p>
			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="awards">
			<div class="my-auto">
				<h2 class="mb-5">Awards &amp; Certifications</h2>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-trophy text-warning"></i> Google
						Analytics Certified Developer</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> Mobile Web
						Specialist - Google Certification</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - University of Colorado Boulder - Emerging Tech Competition
						2009</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - University of Colorado Boulder - Adobe Creative Jam 2008
						(UI Design Category)</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 2<sup>nd</sup>
						Place - University of Colorado Boulder - Emerging Tech Competition
						2008</li>
					<li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - James Buchanan High School - Hackathon 2006</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 3<sup>rd</sup>
						Place - James Buchanan High School - Hackathon 2005</li>
				</ul>
			</div>
		</section>

	</div>



	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for this template -->
	<script src="js/resume.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b5474cbf83da15f638ea76b63ed04c3"></script>
	<script src="js/displayMap.js"></script>
	<%--<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c370f01b5f96b5d7588b834370912c25"></script> --%>

	<script src="js/host.js"></script>
	<script src="js/home.js"></script>

	<script>
		var lat;
		var lng;

		$(document).ready(
				function() {
					var timestamp = new Date().getTime();
					console.log("****************************");
					console.log("시작 시간: " + timestamp);
					// Geolocation API에 액세스할 수 있는지를 확인
					if (navigator.geolocation) {
						//위치 정보를 얻기
						navigator.geolocation.getCurrentPosition(function(pos) {
							$('#latitude').html(pos.coords.latitude); // 위도
							$('#longitude').html(pos.coords.longitude); // 경도
							var distance;
							var disX = 37.446896 - 37.4469025;
							var disY = 127.143955 - 127.14405579999999;
							//최소거리 0.0001
							console.log(Math.sqrt(Math.abs(disX * disX)
									+ Math.abs(disY * disY)));
							var timestamp2 = new Date().getTime();
							console.log("****************************");
							console.log("위도 경도 얻는 시간: "
									+ (timestamp2 - timestamp));

							lat = pos.coords.latitude;
							lng = pos.coords.longitude;
							//console.log(lat);
							//console.log(lng);
							//지도부분
							//가정하기 사거리
							lng = 127.145425;
							lat = 37.44631;
							displayMap(lat, lng);
							playAlert = setInterval(function() {
								//displayMap(lat, lng);
							}, 5000);

							//console.log("getJson Data Start");

							// 게임 문답부분
							//questionManager();

						});
					} else {
						alert("이환경에서는 실행이 불가능합니다 -LSH");
					}

				});
	</script>
	<script>
			//Get the modal
			var modal = document.getElementById('myModal');

			// Get the button that opens the modal
			var btn = document.getElementById("myBtn");

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks on the button, open the modal 
			btn.onclick = function() {
				modal.style.display = "block";
			}

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
				modal.style.display = "none";
			}

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>



</body>

</html>
