package com.upn.sagitario.services;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.upn.sagitario.entities.Mantenimiento;

public class ServiceMantenimiento implements IService<Mantenimiento> {
private JdbcTemplate db;
	
	public ServiceMantenimiento(DriverManagerDataSource dataSource) {
		db = new JdbcTemplate(dataSource);
	}
	@Override
		public List<Map<String, Object>> getList(String searchCriteria) {
			if (searchCriteria==null || searchCriteria.isEmpty()){
				return db.queryForList("select * from mantenimiento");
			}else {
				return db.queryForList("select * from mantenimiento where descripcion like ?", '%' + searchCriteria + '%');
			}
		}
		

	@Override
	public List<Map<String, Object>> getList() {
		return db.queryForList("select * from mantenimiento");
	}

	@Override
	public Mantenimiento getById(int id) {
		Map<String, Object> object = db.queryForMap("select * from mantenimiento where id=?", id);
		return new Mantenimiento( id,
							  (String) object.get("tipo"),
							  (String) object.get("descripcion"),
							  (String) object.get("kmFrecuencia"));
	}
	


	@Override
	public void add(Mantenimiento object) {
		db.update("insert into mantenimiento(tipo,descripcion,kmFrecuencia)"
				+ " values (?,?,?)",
				object.getTipo(),object.getDescripcion(), object.getKmFrecuencia());		
	}

	@Override
	public void update(Mantenimiento object) {
		db.update("update mantenimiento set tipo=?,descripcion=?,kmFrecuencia=? where id=?",object.getTipo(), object.getDescripcion(),object.getKmFrecuencia(), object.getId());	
	}

	@Override
	public void delete(int id) {
		db.update("delete from mantenimiento where id=?", id);
	}

}
