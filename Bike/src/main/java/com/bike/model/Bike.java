package com.bike.model;

import java.time.LocalDate;

/**
 * @author 苏雄伟
 * @description
 * @create 2017-05-31 15:47
 **/
public class Bike {
	
	private Integer id;
	private String bikeSn;
	private LocalDate startDate;//开始使用日期
	private Byte status;//状态 0：可借 ，1：借出，2，维修中，3：报废
	private LocalDate endDate;//报废时间
	private Station station;//所在站点
	private Member loanTo;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBikeSn() {
		return bikeSn;
	}
	public void setBikeSn(String bikeSn) {
		this.bikeSn = bikeSn;
	}
	public LocalDate getStartDate() {
		return startDate;
	}
	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}
	public Byte getStatus() {
		return status;
	}
	public void setStatus(Byte status) {
		this.status = status;
	}
	public LocalDate getEndDate() {
		return endDate;
	}
	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}
	public Station getStation() {
		return station;
	}
	public void setStation(Station station) {
		this.station = station;
	}
	public Member getLoanTo() {
		return loanTo;
	}
	public void setLoanTo(Member loanTo) {
		this.loanTo = loanTo;
	}
	
	

}
