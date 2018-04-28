package com.saemoonangodomain;

public class MemberVO {
	private String Id;
	private String Name;
	private int TotalPoint;
	private Double Lng;
	private Double Lat;
	private String Img;
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getTotalPoint() {
		return TotalPoint;
	}
	public void setTotalPoint(int totalPoint) {
		TotalPoint = totalPoint;
	}
	public Double getLng() {
		return Lng;
	}
	public void setLng(Double lng) {
		Lng = lng;
	}
	public Double getLat() {
		return Lat;
	}
	public void setLat(Double lat) {
		Lat = lat;
	}
	public String getImg() {
		return Img;
	}
	public void setImg(String img) {
		Img = img;
	}
	@Override
	public String toString() {
		return "MemberVO [Id=" + Id + ", Name=" + Name + ", TotalPoint=" + TotalPoint + ", Lng=" + Lng + ", Lat=" + Lat
				+ ", Img=" + Img + "]";
	}
	
	
}
