package jpa.grupalJPA.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jpa.grupalJPA.model.entity.Cliente;
import jpa.grupalJPA.model.repository.IClienteRepository;

@Service
public class ClienteService {

	@Autowired
	private IClienteRepository clienteRepo;
	
	public List<Cliente> getAll(){
		return clienteRepo.findAll();
	}
	
	public void create(Cliente c) {
		clienteRepo.save(c);
	}
	
}
