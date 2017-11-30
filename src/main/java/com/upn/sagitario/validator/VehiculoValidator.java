package com.upn.sagitario.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.upn.sagitario.entities.Vehiculo;


public class VehiculoValidator implements Validator {

	@Override
	public boolean supports(Class<?> type) {
		return Vehiculo.class.isAssignableFrom(type);
	}

	@Override
	public void validate(Object o, Errors errors) {
		Vehiculo vehiculo = (Vehiculo) o;
		ValidationUtils.rejectIfEmpty(errors, "placa", "required.placa","La Placa es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "clase", "required.clase","La Clase es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "marca", "required.marca","La Marca es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "modelo", "required.modelo","La Modelo es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "anioFabricacion", "required.anioFabricacion","El año de Fabricación es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "color", "required.color","El Color es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "carroceria", "required.carroceria","La Carrocería es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "serieChasis", "required.serieChasis","La Serie del Chasis es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "tipoCombustible", "required.tipoCombustible","El tipo de Combustible es obligatorio");

		ValidationUtils.rejectIfEmpty(errors, "km", "required.km","Km de recorrido es obligatorio");
		
	}

}