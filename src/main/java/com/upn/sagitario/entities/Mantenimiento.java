package com.upn.sagitario.entities;

public class Mantenimiento {
	private int id;
	private String tipo;
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	private String descripcion;
	private String kmFrecuencia;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getKmFrecuencia() {
		return kmFrecuencia;
	}
	public void setKmFrecuencia(String kmFrecuencia) {
		this.kmFrecuencia = kmFrecuencia;
	}
	public Mantenimiento(int id,String tipo, String descripcion, String kmFrecuencia) {
		super();
		this.id = id;
		this.tipo=tipo;
		this.descripcion = descripcion;
		this.kmFrecuencia = kmFrecuencia;
	}
	public Mantenimiento() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
