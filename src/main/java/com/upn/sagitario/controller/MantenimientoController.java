package com.upn.sagitario.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.upn.sagitario.db.DbConnection;
import com.upn.sagitario.entities.Mantenimiento;
import com.upn.sagitario.services.ServiceMantenimiento;
import com.upn.sagitario.validator.MantenimientoValidator;

@RequestMapping("mantenimiento")
@Controller
public class MantenimientoController {
	private final String viewsUrl = "mantenimiento/";
	private MantenimientoValidator mantenimientoValidator;
	private ServiceMantenimiento serviceMantenimiento;
	
	public MantenimientoController() {
		serviceMantenimiento = new ServiceMantenimiento(DbConnection.getDS());
		mantenimientoValidator = new MantenimientoValidator();
	}
	
	@RequestMapping("")
	public ModelAndView index(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewsUrl + "index");		
//		mav.addObject("mantenimientos", serviceMantenimiento.getList());		
//		return mav;	
		mav.setViewName(viewsUrl + "index");
				
		String searchCriteria = req.getParameter("descripcion");
		mav.addObject("mantenimientos", serviceMantenimiento.getList(searchCriteria));	
		mav.addObject("searchCriteria", searchCriteria);
		return mav;
	}	
	
	@RequestMapping(value="/agregar", method=RequestMethod.GET)
	public ModelAndView agregar(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewsUrl + "agregar");
		mav.addObject("mantenimiento", new Mantenimiento());
		return mav;
	}
	
	@RequestMapping(value="/agregar", method=RequestMethod.POST)
	public ModelAndView agregar
		(
				@ModelAttribute ("mantenimiento") Mantenimiento mantenimiento,
				BindingResult result,
				SessionStatus status
		)
	{
		mantenimientoValidator.validate(mantenimiento, result);
		if(result.hasErrors()) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewsUrl + "agregar");
			mav.addObject("mantenimiento", mantenimiento);
			return mav;		
		}else {
			serviceMantenimiento.add(mantenimiento);
			return new ModelAndView("redirect:/mantenimiento");
		}
	}
	
	@RequestMapping(value="/editar", method=RequestMethod.GET)
	public ModelAndView editar(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewsUrl + "editar");
		
		int id = Integer.parseInt(request.getParameter("id"));
		mav.addObject("mantenimiento", serviceMantenimiento.getById(id));
		return mav;
	}
	
	@RequestMapping(value="/editar", method=RequestMethod.POST)
	public ModelAndView editar
	(
		@ModelAttribute ("mantenimiento") Mantenimiento mantenimiento,
		BindingResult result,
		SessionStatus status
	)
	{
		mantenimientoValidator.validate(mantenimiento, result);
		if(result.hasErrors()) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewsUrl + "agregar");
			mav.addObject("mantenimiento", mantenimiento);
			return mav;		
		}else {
			serviceMantenimiento.update(mantenimiento);
			return new ModelAndView("redirect:/mantenimiento");
		}
	}
	
	@RequestMapping(value="/eliminar", method=RequestMethod.GET)
	public ModelAndView eliminar(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		serviceMantenimiento.delete(id);
		return new ModelAndView("redirect:/mantenimiento");
	}
}
