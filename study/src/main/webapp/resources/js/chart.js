/**
 * 2018.06.19 chartData by zzennam 
 */
function chartData(){
	console.log("chartData connected....");
	homeManager.getRank(getData);
	let options1 = {};
	function getData(data) {
		let legend = {};
		let names = [];
		let hrefs = [
				'http://nuli.navercorp.com/sharing/blog/post/1132444',
				'http://nuli.navercorp.com/sharing/blog/post/1132442',
				'http://nuli.navercorp.com/sharing/blog/post/1132439',
				'http://nuli.navercorp.com/sharing/blog/post/1132426',
				'http://nuli.navercorp.com/sharing/blog/post/1115205',
				'http://nuli.navercorp.com/sharing/blog/post/1111811',
				'http://nuli.navercorp.com/sharing/blog/post/1111181',
				'http://nuli.navercorp.com/sharing/blog/post/1096163',
				'http://nuli.navercorp.com/sharing/blog/post/1079940' ];
		let title = [];
		let values = [];
		let dataset = {};
		dataset.title = 'Seamoonan rank per time';
		for (let i = 0; i < data.rank.length; i++) {
			names.push(data.rank[i].name);
			values.push(data.rank[i].totalpoint);
		}
		dataset.values = values;
		dataset.colorset = [ '#DC143C', '#FF8C00', "#30a1ce" ];
		legend.names = names;
		legend.hrefs = hrefs;			
		options1.legend = legend;
		options1.dataset = dataset;
		options1.chartDiv = 'chart';
		options1.chartType = 'column';
		options1.chartSize = {
			width : 700,
			height : 300
		};
		options1.maxValue = 1000;
		options1.increment = 100;
		Nwagon.chart(options1);
		//console.log(options1);
	}
}