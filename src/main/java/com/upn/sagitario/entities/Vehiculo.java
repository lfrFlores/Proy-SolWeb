package com.upn.sagitario.entities;

public class Vehiculo {
	private int id;
	private String placa;
	private String clase;
	private String marca;
	private String modelo;
	private String anioFabricacion;
	private String color;
	private String carroceria;
	private String serieChasis;
	private String tipoCombustible;
	private String km;

	public Vehiculo(int id, String placa, String clase, String marca, String modelo, String anioFabricacion,
			String color, String carroceria, String serieChasis, String tipoCombustible, String km) {
		super();
		this.id = id;
		this.placa = placa;
		this.clase = clase;
		this.marca = marca;
		this.modelo = modelo;
		this.anioFabricacion = anioFabricacion;
		this.color = color;
		this.carroceria = carroceria;	
		this.serieChasis = serieChasis;
		this.tipoCombustible = tipoCombustible;
		this.km = km;
	}
	
	public Vehiculo(String placa, String clase, String marca, String modelo, String anioFabricacion,
			String color, String carroceria, String serieChasis, String tipoCombustible, String km) {
		super();
		this.placa = placa;
		this.clase = clase;
		this.marca = marca;
		this.modelo = modelo;
		this.anioFabricacion = anioFabricacion;
		this.color = color;
		this.carroceria = carroceria;
		this.serieChasis = serieChasis;
		this.tipoCombustible = tipoCombustible;
		this.km = km;
	}
	
public Vehiculo() {
		super();
		// TODO Auto-generated constructor stub
	}

public String getTipoCombustible() {
	return tipoCombustible;
}
public void setTipoCombustible(String tipoCombustible) {
	this.tipoCombustible = tipoCombustible;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPlaca() {
	return placa;
}
public void setPlaca(String placa) {
	this.placa = placa;
}
public String getClase() {
	return clase;
}
public void setClase(String clase) {
	this.clase = clase;
}
public String getMarca() {
	return marca;
}
public void setMarca(String marca) {
	this.marca = marca;
}
public String getModelo() {
	return modelo;
}
public void setModelo(String modelo) {
	this.modelo = modelo;
}
public String getAnioFabricacion() {
	return anioFabricacion;
}
public void setAnioFabricacion(String anioFabricacion) {
	this.anioFabricacion = anioFabricacion;
}
public String getColor() {
	return color;
}
public void setColor(String color) {
	this.color = color;
}
public String getCarroceria() {
	return carroceria;
}
public void setCarroceria(String carroceria) {
	this.carroceria = carroceria;
}
public String getSerieChasis() {
	return serieChasis;
}
public void setSerieChasis(String serieChasis) {
	this.serieChasis = serieChasis;
}

public String getKm() {
	return km;
}
public void setKm(String km) {
	this.km = km;
}

	
}
