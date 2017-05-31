/******************************************************************************
* Copyright (C) 2016 datamarket.com
* All Rights Reserved.
* 本软件为B303datamarket团队开发研制。未经正式书面同意，其他任何个人、团体不得使用、
* 复制、修改或发布本软件.
*****************************************************************************/
package com.bike.action;

import java.util.Map; 
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements RequestAware,
SessionAware, ApplicationAware, ModelDriven<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//泛型实体备用
	protected T entity;
	//可以传送多个id给该字段 形式以逗号隔开
	protected String ids;
	//page用于接收客户端传递的页码
	protected Integer page;
	//rows用于接收客户端传递的每页行数
	protected Integer rows;
	//用于封装请求request
	protected Map<String, Object> request;
	//用于封装会话session
	protected Map<String, Object> session;
	//用于封装application
	protected Map<String, Object> application;
	//Service注入
	
	
	
	@Override 
	public T getModel() {
		return entity;
	}

	@Override
	public void setApplication(Map<String, Object> application) {
		this.application=application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request=request;
	}
	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

}

