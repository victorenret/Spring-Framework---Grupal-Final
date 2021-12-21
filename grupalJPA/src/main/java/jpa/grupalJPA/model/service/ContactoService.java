package jpa.grupalJPA.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import jpa.grupalJPA.model.entity.Contacto;
import jpa.grupalJPA.model.repository.IContactoRepository;

@Service
public class ContactoService {

	@Autowired
	private IContactoRepository contactRepo;
	
	public void create(Contacto c) {
		contactRepo.save(c);
	}
}
