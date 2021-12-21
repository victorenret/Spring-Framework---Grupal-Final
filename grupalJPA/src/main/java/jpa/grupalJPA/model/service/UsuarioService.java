package jpa.grupalJPA.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jpa.grupalJPA.model.entity.UsuarioAdministrativo;
import jpa.grupalJPA.model.entity.UsuarioCliente;
import jpa.grupalJPA.model.entity.UsuarioProfesional;
import jpa.grupalJPA.model.repository.IUsuarioAdminRepository;
import jpa.grupalJPA.model.repository.IUsuarioClientRepository;
import jpa.grupalJPA.model.repository.IUsuarioProRepository;


@Service
public class UsuarioService {
	
	@Autowired
	private IUsuarioAdminRepository adminRepo;
	
	public void createAdmin(UsuarioAdministrativo ua) {
		adminRepo.save(ua);
	}
	public List<UsuarioAdministrativo> getAllAdmin(){
		return adminRepo.findAll();
	}
	public UsuarioAdministrativo getAdmin(int id) {
		return adminRepo.findById(id).get();
	}
	public void deleteByIdAdmin(int id) {
		adminRepo.deleteById(id);
	}
	
	@Autowired
	private IUsuarioClientRepository clientRepo;
	public void createClient(UsuarioCliente uc) {
		clientRepo.save(uc);
	}
	public List<UsuarioCliente> getAllClient(){
		return clientRepo.findAll();
	}
	public UsuarioCliente getClient(int id) {
		return clientRepo.findById(id).get();
	}
	public void deleteByIdClient(int id) {
		clientRepo.deleteById(id);
	}
	
	@Autowired
	private IUsuarioProRepository proRepo;
	public void createPro(UsuarioProfesional up) {
		proRepo.save(up);
	}
	public List<UsuarioProfesional> getAllPro(){
		return proRepo.findAll();
	}
	public UsuarioProfesional getPro(int id) {
		return proRepo.findById(id).get();
	}
	public void deleteByIdPro(int id) {
		proRepo.deleteById(id);
	}
	


}
