package com.upn.sagitario.services;

import java.util.List;
import java.util.Map;

public interface IService <T>{
	List<Map<String, Object>> getList();
	T getById(int id);
	void add(T object);	
	void update(T object);	
	void delete(int id);	
}