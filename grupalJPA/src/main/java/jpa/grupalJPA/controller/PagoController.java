package jpa.grupalJPA.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jpa.grupalJPA.model.entity.Pago;
import jpa.grupalJPA.model.service.PagoService;

@Controller
public class PagoController {
	
	@Autowired
	private PagoService ps;
	
	/**********************************LISTAR************************************/
	@RequestMapping(path = "/pago", method = RequestMethod.GET)
	public ModelAndView readVisita() {
		List<Pago> pago = ps.getAll();
		return new ModelAndView("pago", "pago", pago);
	}
	/****************************************************************************/
	/**********************************CREAR*************************************/
	@PostMapping(value = "pago/crearPago")
	public String crearCapacitacion(Pago pago) {
		ps.create(pago);
		return "redirect:/pago";
	}
	/****************************************************************************/
	

}
