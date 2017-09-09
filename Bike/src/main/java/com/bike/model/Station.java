package com.bike.model;

/**
 * @author 苏雄伟
 * @description:
 * @create 2017-09-09 14:29
 **/

public class Station {
	private Integer id;
	private String stationSn;//站点编号
	private String stationName;//站点名称
	private String location;//站点位置
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStationSn() {
		return stationSn;
	}
	public void setStationSn(String stationSn) {
		this.stationSn = stationSn;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
}
