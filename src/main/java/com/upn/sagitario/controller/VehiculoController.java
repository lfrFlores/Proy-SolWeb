package com.upn.sagitario.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.upn.sagitario.db.DbConnection;
import com.upn.sagitario.entities.Vehiculo;
import com.upn.sagitario.services.ServiceVehiculo;
import com.upn.sagitario.validator.VehiculoValidator;

@RequestMapping("vehiculo")
@Controller
public class VehiculoController {
	private final String viewsUrl = "vehiculo/";
	private VehiculoValidator vehiculoValidator;
	private ServiceVehiculo serviceVehiculo;
	
	public VehiculoController() {
		serviceVehiculo = new ServiceVehiculo(DbConnection.getDS());
		vehiculoValidator = new VehiculoValidator();
	}
	
	@RequestMapping("")
	public ModelAndView index(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewsUrl + "index");		
//		mav.addObject("vehiculos", serviceVehiculo.getList());		
//		return mav;		
		mav.setViewName(viewsUrl + "index");
		
		String searchCriteria = req.getParameter("placa");
		mav.addObject("vehiculos", serviceVehiculo.getList(searchCriteria));	
		mav.addObject("searchCriteria", searchCriteria);
		return mav;
	}	
	
	@RequestMapping(value="/agregar", method=RequestMethod.GET)
	public ModelAndView agregar(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewsUrl + "agregar");
		mav.addObject("vehiculo", new Vehiculo());
		return mav;
	}
	
	@RequestMapping(value="/agregar", method=RequestMethod.POST)
	public ModelAndView agregar
		(
				@ModelAttribute ("vehiculo") Vehiculo vehiculo,
				BindingResult result,
				SessionStatus status
		)
	{
		vehiculoValidator.validate(vehiculo, result);
		if(result.hasErrors()) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewsUrl + "agregar");
			mav.addObject("vehiculo", vehiculo);
			return mav;		
		}else {
			serviceVehiculo.add(vehiculo);
			return new ModelAndView("redirect:/vehiculo");
		}
	}
	
	@RequestMapping(value="/editar", method=RequestMethod.GET)
	public ModelAndView editar(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewsUrl + "editar");
		
		int id = Integer.parseInt(request.getParameter("id"));
		mav.addObject("vehiculo", serviceVehiculo.getById(id));
		return mav;
	}
	
	@RequestMapping(value="/editar", method=RequestMethod.POST)
	public ModelAndView editar
	(
		@ModelAttribute ("vehiculo") Vehiculo vehiculo,
		BindingResult result,
		SessionStatus status
	)
	{
		vehiculoValidator.validate(vehiculo, result);
		if(result.hasErrors()) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewsUrl + "agregar");
			mav.addObject("vehiculo", vehiculo);
			return mav;		
		}else {
			serviceVehiculo.update(vehiculo);
			return new ModelAndView("redirect:/vehiculo");
		}
	}
	
	@RequestMapping(value="/eliminar", method=RequestMethod.GET)
	public ModelAndView eliminar(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		serviceVehiculo.delete(id);
		return new ModelAndView("redirect:/vehiculo");
	}
}