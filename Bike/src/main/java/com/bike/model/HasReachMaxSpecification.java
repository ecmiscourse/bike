package com.bike.model;

import java.util.List;

/**
* <p>Title: HasReachMaxSpecification</p>
* <p>Description: </p>
* @author 邓忍
* @date 2017年8月9日
*/
public class HasReachMaxSpecification implements ISpecification<Member> {

	/**
	 * 用户最多只能借一辆车
	 */
	
	public boolean isSatisfiedBy(Member member) {
		boolean mm = false;
		List<Loan> list = member.getLoans();
		if(list == null || list.size()<1){
			mm=true;
		}
		return mm;
		
	}
	
}
