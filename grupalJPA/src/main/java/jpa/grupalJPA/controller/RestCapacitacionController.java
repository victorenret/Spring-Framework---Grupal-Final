package jpa.grupalJPA.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jpa.grupalJPA.model.entity.Capacitacion;
import jpa.grupalJPA.model.entity.Cliente;
import jpa.grupalJPA.model.service.CapacitacionService;
import jpa.grupalJPA.model.service.ClienteService;

@RestController
public class RestCapacitacionController {
	
	
	@Autowired
	private CapacitacionService cs;
	
	@Autowired 
	private ClienteService cls;
	
	@RequestMapping(value="/api/capacitaciones", headers = "Accept=application/json")
	public List<Capacitacion> getCapacitaciones(){
		
		return cs.getAll();
	}
	
	@PostMapping("/api/capacitaciones")
	public void addClientes(@RequestBody Capacitacion capacitacion){
		cs.create(capacitacion);	
	}
	
	@RequestMapping(value="/api/clientes", headers = "Accept=application/json")
	public List<Cliente> getClientes(){
		return cls.getAll();	
	}
	
	
	

	
	
	
}
