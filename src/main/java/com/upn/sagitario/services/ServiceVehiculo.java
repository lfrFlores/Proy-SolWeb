package com.upn.sagitario.services;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.upn.sagitario.entities.Vehiculo;

public class ServiceVehiculo implements IService<Vehiculo> {
	private JdbcTemplate db;
	
	public ServiceVehiculo(DriverManagerDataSource dataSource) {
		db = new JdbcTemplate(dataSource);
	}
	
	@Override
		public List<Map<String, Object>> getList(String searchCriteria) {
			if (searchCriteria==null || searchCriteria.isEmpty()){
				return db.queryForList("select * from vehiculo");
			}else {
				return db.queryForList("select * from vehiculo where placa like ?", '%' + searchCriteria + '%');
			}
		}
		

	@Override
	public List<Map<String, Object>> getList() {
		return db.queryForList("select * from vehiculo");
	}

	@Override
	public Vehiculo getById(int id) {
		Map<String, Object> object = db.queryForMap("select * from vehiculo where id=?", id);
		return new Vehiculo( id,
							  (String) object.get("placa"),
							  (String) object.get("clase"),
							  (String) object.get("marca"),
							  (String) object.get("modelo"),
							  (String) object.get("anioFabricacion"),
							  (String) object.get("color"),
							  (String) object.get("carroceria"),
							  (String) object.get("serieChasis"),
							  (String) object.get("tipoCombustible"),
							  (String) object.get("km"));
	}
	


	@Override
	public void add(Vehiculo object) {
		db.update("insert into vehiculo(placa,clase,marca,modelo,anioFabricacion,color,carroceria,serieChasis,tipoCombustible,km)"
				+ " values (?,?,?,?,?,?,?,?,?,?)",
				object.getPlaca(), object.getClase(), object.getMarca(), object.getModelo(),object.getAnioFabricacion(),object.getColor(),
				object.getCarroceria(),object.getSerieChasis(),object.getTipoCombustible(),object.getKm());		
	}

	@Override
	public void update(Vehiculo object) {
		db.update("update vehiculo set placa=?,clase=?,marca=?,modelo=?,anioFabricacion=?,color=?,carroceria=?,serieChasis=?,tipoCombustible=?,km=? where id=?",object.getPlaca(), object.getClase(), object.getMarca(), object.getModelo(),object.getAnioFabricacion(),object.getColor(),
				object.getCarroceria(),object.getSerieChasis(),object.getTipoCombustible(),object.getKm(), object.getId());	
	}

	@Override
	public void delete(int id) {
		db.update("delete from vehiculo where id=?", id);
	}

}
