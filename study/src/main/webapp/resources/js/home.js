/**
 * Created By zzennam on 2018-02-15
 */


var homeManager = (function() {
	//console.log("HomeManager Start..........");
	function locationData(callback) {
		$.getJSON(host + '/location', callback);
	}

	function questionData(lno, callback) {
		console.log("문제번호: "+ lno);
		$.getJSON(host + '/question/' +lno, callback);
	}

	return {
		locationData : locationData,
		questionData : questionData
	}
})();