package com.upn.sagitario.services;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Service<T> implements IService<T> {
	private JdbcTemplate db;
	
	public Service(DriverManagerDataSource ds) {
		db = new JdbcTemplate(ds);
	}

	@Override
	public List<Map<String, Object>> getList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(T objeect) {
		// TODO Auto-generated method stub
	}

	@Override
	public void update(T object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public T getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
