/**
 * Created By zzennam on 2018-02-15
 */


var homeManager = (function () {
	function myLocation(callback){
		$.getJSON(host + '/mylocation', callback);
	}
	function locationData(callback) {
		$.getJSON(host + '/location', callback);
	}

	function questionData(lno, callback) {
		console.log("문제번호: " + lno);
		$.getJSON(host + '/question/' + lno, callback);
	}

	function membersData(callback) {
		$.getJSON(host + '/memberlist', callback);
	}

	return {
		myLocation : myLocation,
		locationData: locationData,
		questionData: questionData,
		membersData: membersData
	}
})();