package com.upn.sagitario.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.upn.sagitario.entities.Mantenimiento;

public class MantenimientoValidator implements Validator {

	@Override
	public boolean supports(Class<?> type) {
		return Mantenimiento.class.isAssignableFrom(type);
	}

	@Override
	public void validate(Object o, Errors errors) {
		Mantenimiento mantenimiento = (Mantenimiento) o;
		ValidationUtils.rejectIfEmpty(errors, "tipo", "required.tipo","Tipo es obligatorio");		
		ValidationUtils.rejectIfEmpty(errors, "kmFrecuencia", "required.descripcion","Km Frecuencia es obligatorio");
		
	}

}