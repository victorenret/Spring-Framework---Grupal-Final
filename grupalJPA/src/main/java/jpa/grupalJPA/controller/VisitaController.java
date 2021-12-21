package jpa.grupalJPA.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jpa.grupalJPA.model.entity.Visita;
import jpa.grupalJPA.model.service.VisitaService;

@Controller
public class VisitaController {

	@Autowired
	private VisitaService vs;
	
	/**********************************LISTAR************************************/
	@RequestMapping(path = "/visita", method = RequestMethod.GET)
	public ModelAndView readVisita() {
		List<Visita> visita = vs.getAll();
		return new ModelAndView("visita", "visita", visita);
	}
	/****************************************************************************/
	/**********************************CREAR************************************/
	@PostMapping(value = "visita/crearVisita")
	public String crearVisita(Visita visita) {
		vs.create(visita);
		return "redirect:/visita";
	}
	/****************************************************************************/

	/**********************************EDITAR************************************/
	@RequestMapping("/visitaCheck")
	public ModelAndView editarVisita(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("visitaEdit");
		Visita visita = vs.get(id);
		mav.addObject("visita", visita);
		return mav;
	}
	/****************************************************************************/

	
}
