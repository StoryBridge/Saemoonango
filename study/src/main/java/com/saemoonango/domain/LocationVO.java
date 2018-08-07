package com.saemoonango.domain;

public class LocationVO {
	
	private Integer Lno;
	private Double Lat;
	private Double Lng;
	private String PlaceName;
	public Integer getLno() {
		return Lno;
	}
	public void setLno(Integer lno) {
		Lno = lno;
	}
	public Double getLat() {
		return Lat;
	}
	public void setLat(Double lat) {
		Lat = lat;
	}
	public Double getLng() {
		return Lng;
	}
	public void setLng(Double lng) {
		Lng = lng;
	}
	public String getPlaceName() {
		return PlaceName;
	}
	public void setPlaceName(String placeName) {
		PlaceName = placeName;
	}
	@Override
	public String toString() {
		return "LocationVO [Lno=" + Lno + ", Lat=" + Lat + ", Lng=" + Lng + ", PlaceName=" + PlaceName + "]";
	}
	

}
