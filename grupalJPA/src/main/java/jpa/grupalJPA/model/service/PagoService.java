package jpa.grupalJPA.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jpa.grupalJPA.model.entity.Pago;
import jpa.grupalJPA.model.repository.IPagoRepository;

@Service
public class PagoService {
	@Autowired
	private IPagoRepository pagoRepo;
	
	public List<Pago> getAll(){
		return pagoRepo.findAll();
	}
	
	public Pago get(int id) {
		return pagoRepo.findById(id).get();
	}
	
	public Pago getOne(int id) {
		return pagoRepo.getOne(id);
	}
	
	public void create(Pago p) {
		pagoRepo.save(p);
	}
	
	public void update(Pago p) {
		pagoRepo.save(p);
	}
	
	public void deleteById(int id) {
		pagoRepo.deleteById(id);
	}
	
	public void delete(int id) {
		pagoRepo.delete(pagoRepo.getOne(id));
	}

}
