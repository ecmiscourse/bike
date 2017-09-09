package com.bike.model;

import java.util.ArrayList;

/**
* <p>Title: Member</p>
* <p>Description: </p>
* @author 邓忍
* @date 2017年8月9日
*/
public class Member{
	
	private String id;
	private Person person;
	private ArrayList<Loan> loans;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public ArrayList<Loan> getLoans() {
		return loans;
	}
	public void setLoans(ArrayList<Loan> loans) {
		this.loans = loans;
	}
	
	public Loan FindCurrentLoanFor(Bike bike){
		for(int i=0 ; i<loans.size() ; i++){
			if(loans.get(i).getBike().equals(bike)){
				Loan bikeLoan = loans.get(i);
				return bikeLoan;
			}
		}
		return null;
	}
		
		
	public final void Return(Bike bike){
		com.bike.model.Loan loan = FindCurrentLoanFor(bike);
		if(loan != null){
			loan.MarkAsReturned();
			bike.setLoanTo(null);
		}
	}
	
	
	public final boolean CanLoad(Bike bike){
		return bike.getLoanTo() == null;
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public final Loan Loan(Bike bike){
		Loan loan = null;
		if(CanLoad(bike) && validate(bike)){
			if(loans == null){
				loans = new ArrayList();
				loans.add(loan);
			}else{
				loans.add(loan);
			}
		}
		return loan;
	}
	
	public boolean validate(Bike wantbike){
		HasReachMaxSpecification hs = new HasReachMaxSpecification();
		LoanOnlySpecification lo = new LoanOnlySpecification(wantbike);
		return (hs.isSatisfiedBy(this) && lo.isSatisfiedBy(this));
	}


}
