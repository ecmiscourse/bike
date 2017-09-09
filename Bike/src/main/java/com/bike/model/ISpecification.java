package com.bike.model;

public interface ISpecification<T> {
	public boolean isSatisfiedBy(T entity);
}
