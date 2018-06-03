function displayMap(lat, lng, id) {
	//var timestamp2 = new Date().getTime();
	//console.log("****************************");
	//console.log("dispayMap 시간: " + timestamp2);
	//console.log(lat);
	//console.log(lng);
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center: new daum.maps.LatLng(lat, lng), // 지도의 중심좌표
			level: 3
			// 지도의 확대 레벨
		};

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 마커가 표시될 위치입니다
	var markerPosition = new daum.maps.LatLng(lat, lng);

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
		position: markerPosition
	});

	// 문제 장소들 데이타 호출
	homeManager.locationData(location);
	function location(data) {
		//var timestamp3 = new Date().getTime();
		//console.log("****************************");
		//console.log("lat : " + lat + " lng : " + lng);
		//console.log("LocationData: " + (timestamp3 - timestamp2));
		var positions = [];
		var disX;
		var disY;
		positions.push({
			title: '<div>내위치</div>',
			latlng: new daum.maps.LatLng(lat, lng)
		});
		$.each(data.location, function (i, location) {
			positions.push({
				title: '<div>' + location.PlaceName + '</div>',
				latlng: new daum.maps.LatLng(location.
					Lng, location.Lat)
			});
			disX = location.Lng - lat;
			disY = location.Lat - lng;
			//문제 호출
			if (Math.sqrt(Math.abs(disX * disX) + Math.abs(disY * disY)) < 0.0001) {
				console.log(location.Lno + "번 문제");
				homeManager.questionData(location.Lno, question);
				function question(data) {
					console.log("GET QUESTION");
					console.log(data);
					document.getElementById("modal-header").innerHTML = '<strong>새문안고</strong>';
					document.getElementById("question").innerHTML = data.question[0].Question
						+ ' <span id="point">'
						+ data.question[0].Point
						+ '</span>점';
					document.getElementById("rightAnswer").innerHTML = data.question[0].RightAnswer;
					document.getElementById("Qno").innerHTML = data.question[0].Qno;
					modal.open();					
				}
			}
		});
		//console.log(positions);

		// 다른 유저들 데이터 호출
		homeManager.memberlist(id, members);
		function members(membersData) {
			console.log("members connected.....");
			let memberlistArray = [];
			$.each(membersData.memberlist, function (i, memberlist) {
				memberlistArray.push({
					title: '<div>' + memberlist.name + '</div>',
					latlng: new daum.maps.LatLng(memberlist.Lng, memberlist.Lat),
					Img: memberlist.Img
				});
			});
			console.log(memberlistArray);
			

		}



		// 내 위치
		var imageSrc1 = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
			// 마커이미지의 주소입니다
			imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
			imageOption = {
				offset: new daum.maps.Point(27, 69)
			}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커 이미지를 생성합니다
		var markerImage1 = new daum.maps.MarkerImage(imageSrc1, imageSize);

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
			map: map, // 마커를 표시할 지도
			position: positions[0].latlng, // 마커를 표시할 위치
			title: positions[0].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			image: markerImage1, // 마커 이미지
		});

		// 마커에 표시할 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
			content: positions[0].title
			// 인포윈도우에 표시할 내용
		});

		// 커스텀 오버레이를 생성합니다
		var customOverlay = new daum.maps.CustomOverlay({
			map: map,
			position: positions[0].latlng,
			content: '<div class="customoverlay"><span class="title">' + positions[0].title
				+ '</span></div>',
			yAnchor: 1
		});

		// 문제 장소들
		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

		for (var i = 1; i < positions.length; i++) {

			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new daum.maps.Size(24, 35);

			// 마커 이미지를 생성합니다
			var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map: map, // 마커를 표시할 지도
				position: positions[i].latlng, // 마커를 표시할 위치
				title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				image: markerImage, // 마커 이미지
			});

			// 마커에 표시할 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
				content: positions[i].title
				// 인포윈도우에 표시할 내용
			});

			// 커스텀 오버레이를 생성합니다
			var customOverlay = new daum.maps.CustomOverlay({
				map: map,
				position: positions[i].latlng,
				content: '<div class="customoverlay">' + '<span class="title">' + positions[i].title
					+ '</span></div>',
				yAnchor: 1
			});

			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			daum.maps.event.addListener(marker, 'mouseover', makeOverListener(
				map, marker, infowindow));
			daum.maps.event.addListener(marker, 'mouseout',
				makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다
		function makeOverListener(map, marker, infowindow) {
			return function () {
				infowindow.open(map, marker);
			};
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다
		function makeOutListener(infowindow) {
			return function () {
				infowindow.close();
			};
		}

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);

		var timestamp4 = new Date().getTime();
		//console.log("****************************");
		//console.log("끝나는 시간: " + (timestamp4 - timestamp3));

	}

}