package jpa.grupalJPA.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



import jpa.grupalJPA.model.entity.Capacitacion;
import jpa.grupalJPA.model.service.CapacitacionService;



@Controller
public class CapacitacionController {
	
	@Autowired
	private CapacitacionService cs;
	
	/**********************************CREAR************************************/
	@PostMapping(value = "/crearCapacitacion")
	public String crearCapacitacion(Capacitacion capa) {
		cs.create(capa);
		return "redirect:/capacitacion";
	}
	/****************************************************************************/
	/**********************************LISTAR************************************/
	@RequestMapping(path = "/capacitacion", method = RequestMethod.GET)
	public ModelAndView readCapacitacion() {
		List<Capacitacion> capacitacion = cs.getAll();
		return new ModelAndView("capacitacion", "capacitacion", capacitacion);
	}
	/****************************************************************************/
	/**********************************ACTUALIZAR********************************/
	@RequestMapping("/editarCapacitacion")
	public ModelAndView editarCapacitacion(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("capacitacionEdit");
		Capacitacion capacitacion = cs.get(id);
		mav.addObject("capacitacion", capacitacion);
		return mav;
	}
	/****************************************************************************/
	/**********************************ELIMINAR**********************************/
	@GetMapping("/delete/{id}")
	public String deleteCapacitacion(@PathVariable int id) {
		cs.deleteById(id);
		return "redirect:/capacitacion";
	}
	/****************************************************************************/
	
	

	
	
	
	
	
	

}
