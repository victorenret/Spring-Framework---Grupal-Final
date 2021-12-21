package jpa.grupalJPA.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import jpa.grupalJPA.model.entity.Contacto;

import jpa.grupalJPA.model.service.ContactoService;

@Controller
public class ContactoController {

	@Autowired
	private ContactoService cs;
	
	/**********************************CREAR************************************/
	@GetMapping(value = "/contacto")
	public String capturarContacto(Map<String, Object>map) {
		Contacto contact = new Contacto();
		map.put("contacto", contact);
		return "contacto";
	}
	@PostMapping(value = "/contacto")
	public String registrarContacto(Contacto contact) {
		cs.create(contact);
		return "redirect:/contacto";
	}
	/****************************************************************************/
	
}
