/**
 * Created By zzennam on 2018-02-15
 */


var homeManaager = (function() {
	console.log("HomeManager Start..........");
	function locationData(callback) {
		$.getJSON(host + '/location', callback);
	}

	function questionData() {
		$.getJSON(host + '/questionData', callback);
	}

	return {
		locationData : locationData,
		questionData : questionData
	}
})();