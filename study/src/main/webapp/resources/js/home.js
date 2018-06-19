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

	function memberlist(id, callback) {
		$.getJSON(host + '/memberlist/' + id, callback);
	}
	function getRank(callback) {
		$.getJSON(host + '/rank', callback);
	}

	return {
		myLocation : myLocation,
		locationData: locationData,
		questionData: questionData,
		memberlist: memberlist,
		getRank : getRank
	}
})();