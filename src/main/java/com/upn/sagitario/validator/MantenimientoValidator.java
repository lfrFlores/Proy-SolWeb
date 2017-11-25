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
		ValidationUtils.rejectIfEmpty(errors, "descripcion", "required.descripcion","Descripción es obligatorio");
		//ValidationUtils.rejectIfEmpty(errors, "aPaterno", "required.aPaterno","El ap. paterno es obligatorio");
		//ValidationUtils.rejectIfEmpty(errors, "aMaterno", "required.aMaterno","El ap. materno es obligatorio");
		//ValidationUtils.rejectIfEmpty(errors, "dni", "required.dni","El dni es obligatorio");
	}

}