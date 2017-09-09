package com.bike.model;

import java.time.LocalDate;

/**
* <p>Title: Loan</p>
* <p>Description: </p>
* @author 邓忍
* @date 2017年8月9日
*/
public class Loan {
	
	public String id;
	public LocalDate loanDate;//借车日期
	public LocalDate dateForReturn;//应还车日期
	public LocalDate returnDate;//还车日期
	public Bike bike;
	public Member menmber;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public LocalDate getLoanDate() {
		return loanDate;
	}
	public void setLoanDate(LocalDate loanDate) {
		this.loanDate = loanDate;
	}
	public LocalDate getDateForReturn() {
		return dateForReturn;
	}
	public void setDateForReturn(LocalDate dateForReturn) {
		this.dateForReturn = dateForReturn;
	}
	public LocalDate getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(LocalDate returnDate) {
		this.returnDate = returnDate;
	}
	public Bike getBike() {
		return bike;
	}
	public void setBike(Bike bike) {
		this.bike = bike;
	}
	public Member getMenmber() {
		return menmber;
	}
	public void setMenmber(Member menmber) {
		this.menmber = menmber;
	}
	public boolean HasNotBeenReturn(){
		return returnDate == null;
	}
	public void MarkAsReturned(){
		returnDate = LocalDate.now();
	}
}
