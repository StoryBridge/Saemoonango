<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<base href="resources/">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>chart</title>
<meta charset="utf-8">
<style>
* {
	margin: 0;
	padding: 0;
}

div {
	padding: 0px;
	overflow: hidden;
	height: auto;
}

.hgroup {
	padding: 20px;
	background-color: #e9e9e9;
}

.hgroup h1 {
	font-family: Tahoma;
}

.hgroup p {
	margin: 10px 0;
	font-size: 10px
}

h2 {
	margin: 0;
	padding: 20px;
	border: 1px solid #000;
	background-color: #f9f9f9;
	border-width: 1px 0;
	font-family: Tahoma;
}
</style>

<link rel='stylesheet' href='css/Nwagon.css' type='text/css'>
<script src='js/Nwagon.js'></script>
<script src="vendor/jquery/jquery.min.js"></script>

</head>

<body>
	<div id="Nwagon"></div>
	<script>
		var charData = (function() {
			var host = "http://localhost:8080";
			function getRank(callback) {
				$.getJSON(host + '/rank', callback);
			}
			return {
				getRank : getRank
			}
		})();
		charData.getRank(getData);
		function getData(data) {
			console.log(data);
			let rank = [];
			console.log(data.rank.length);
			console.log(data.rank);
			console.log(data.rank[0]);
			console.log(data.rank[0].name);
			for (let i = 0; i < data.rank.length; i++) {

			}

		}

		// 여기 잘 모르겟음 나중에 구현해볼 것
		/* 		(function() {
		 var host = "http://localhost:8080";
		 var root = this;
		 // I have to study this code 2018.06.14 module pattern
		 // var version = '1.0';
		 var Module1;
		 if (typeof exports !== 'undefined') {
		 Module1 = exports;
		 } else {
		 Module1 = root.Module1 = {};
		 }
		 Module1.getVersion = function(callback) {
		 return $.getJSON(host + '/rank', callback);
		 //return version;
		 }
		 }()); */

		var options = {
			'legend' : {
				names : [ 'EunJeong', 'HanSol', 'InSook', 'Eom', 'Pearl',
						'SeungMin', 'TJ', 'Taegyu', 'YongYong' ],
				hrefs : [
						'http://nuli.navercorp.com/sharing/blog/post/1132444',
						'http://nuli.navercorp.com/sharing/blog/post/1132442',
						'http://nuli.navercorp.com/sharing/blog/post/1132439',
						'http://nuli.navercorp.com/sharing/blog/post/1132426',
						'http://nuli.navercorp.com/sharing/blog/post/1115205',
						'http://nuli.navercorp.com/sharing/blog/post/1111811',
						'http://nuli.navercorp.com/sharing/blog/post/1111181',
						'http://nuli.navercorp.com/sharing/blog/post/1096163',
						'http://nuli.navercorp.com/sharing/blog/post/1079940' ]
			},
			'dataset' : {
				title : 'Playing time per day',
				values : [ 5, 7, 2, 4, 6, 3, 5, 2, 10 ],
				colorset : [ '#DC143C', '#FF8C00', "#30a1ce" ]
			},
			'chartDiv' : 'Nwagon',
			'chartType' : 'column',
			'chartSize' : {
				width : 700,
				height : 300
			},
			'maxValue' : 10,
			'increment' : 1
		};
		console.log(options);
		Nwagon.chart(options);
	</script>
</body>

</html>