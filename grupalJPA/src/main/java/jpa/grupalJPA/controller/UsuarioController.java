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

import jpa.grupalJPA.model.entity.UsuarioAdministrativo;
import jpa.grupalJPA.model.entity.UsuarioCliente;
import jpa.grupalJPA.model.entity.UsuarioProfesional;
import jpa.grupalJPA.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService us;
	
	/**********************************CREAR USUARIO ADMINISTRATIVO/CLIENTE/PROFESIONAL************************************/
	
	//----------------------------Administrativo-----------------------------
	@PostMapping(value = "/administrativo/crearAdministrativo")
	public String crearAdministrativo(UsuarioAdministrativo admin) {
		us.createAdmin(admin);
		return "redirect:/administrativo";
	}
	//----------------------------------------------------------------------
	
	//-------------------------------Cliente--------------------------------
	@PostMapping(value = "/cliente/crearCliente")
	public String crearCliente(UsuarioCliente client) {
		us.createClient(client);
		return "redirect:/cliente";
	}
	//----------------------------------------------------------------------
	
	//-----------------------------Profesional------------------------------
	@PostMapping(value = "/profesional/crearProfesional")
	public String crearProfesional(UsuarioProfesional pro) {
		us.createPro(pro);
		return "redirect:/profesional";
	}
	//----------------------------------------------------------------------
	
	/**********************************************************************************************************************/

	/**********************************LISTAR USUARIOS ADMINISTRATIVO/CLIENTE/PROFESIONAL************************************/
	
	@RequestMapping(path = "/administrativo", method = RequestMethod.GET)
	public ModelAndView readAdm() {
		List<UsuarioAdministrativo> administrativo = us.getAllAdmin();
		return new ModelAndView("usuarioAdm", "administrativo", administrativo);
	}
	
	@RequestMapping(path = "/cliente", method = RequestMethod.GET)
	public ModelAndView readClient() {
		List<UsuarioCliente> cliente = us.getAllClient();
		return new ModelAndView("usuarioCliente", "cliente", cliente);
	}

	@RequestMapping(value = "/profesional", method = RequestMethod.GET)
	public ModelAndView readPro() {
		List<UsuarioProfesional> pro = us.getAllPro();
		return new ModelAndView("usuarioPro", "pro", pro);
	}

	/**********************************************************************************************************************/

	/**********************************ELIMINAR USUARIOS ADMINISTRATIVO/CLIENTE/PROFESIONAL************************************/
	@GetMapping("/profesional/deletePro/{id}")
	public String deletePro(@PathVariable int id) {
		us.deleteByIdPro(id);
		return "redirect:/profesional";
	}
	
	@GetMapping("/administrativo/deleteAdm/{id}")
	public String deleteAdm(@PathVariable int id) {
		us.deleteByIdAdmin(id);
		return "redirect:/administrativo";
	}
	
	@GetMapping("/cliente/deleteClient/{id}")
	public String deleteClient(@PathVariable int id) {
		us.deleteByIdClient(id);
		return "redirect:/cliente";
	}
	/**********************************************************************************************************************/
	
	/**********************************ACTUALIZAR USUARIOS ADMINISTRATIVO/CLIENTE/PROFESIONAL************************************/
	@RequestMapping("/editarAdministrativo")
	public ModelAndView editarAdm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("usuarioAdmEdit");
		UsuarioAdministrativo adm = us.getAdmin(id);
		mav.addObject("adm", adm);
		return mav;
	}
	
	@RequestMapping("/editarCliente")
	public ModelAndView editarCliente(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("usuarioClienteEdit");
		UsuarioCliente client = us.getClient(id);
		mav.addObject("client", client);
		return mav;
	}
	
	@RequestMapping("/editarProfesional")
	public ModelAndView editarPro(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("usuarioProEdit");
		UsuarioProfesional pro = us.getPro(id);
		mav.addObject("pro", pro);
		return mav;
	}
	/**********************************************************************************************************************/

}
