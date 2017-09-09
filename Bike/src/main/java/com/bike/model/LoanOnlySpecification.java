package com.bike.model;

import java.util.List;

/**
* <p>Title: LoanOnlySpecification</p>
* <p>Description: </p>
* @author 邓忍
* @date 2017年9月9日
*/
public class LoanOnlySpecification implements ISpecification<Member> {
	private Bike wantBike;
	/*
	 * 同一辆车只能借一次
	 * 
	 */
	public LoanOnlySpecification(Bike wantBike){
		this.wantBike = wantBike;
	}
	public boolean isSatisfiedBy(Member member) {
		boolean mm = false;
		List<Loan> list = member.getLoans();
		if(list == null){
			mm=true; 
		}else{
			for(Loan loan:list){
				if(loan.getBike().getBikeSn()!=wantBike.getBikeSn()){
					mm=true;
				}
			}
		}
		
		return mm;
	}
}
