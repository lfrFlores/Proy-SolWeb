package com.upn.sagitario.db;


import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class DbConnection {
	public static DriverManagerDataSource getDS(){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/sagitario");
		dataSource.setUsername("root");
		dataSource.setPassword("Flo062324");
		return dataSource;
	}
}
