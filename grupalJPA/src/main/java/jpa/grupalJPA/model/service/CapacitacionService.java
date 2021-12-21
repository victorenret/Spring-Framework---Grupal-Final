package jpa.grupalJPA.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jpa.grupalJPA.model.entity.Capacitacion;
import jpa.grupalJPA.model.repository.ICapacitacionRepository;


@Service
public class CapacitacionService {
	
	@Autowired
	private ICapacitacionRepository capaRepo;
	
	public Capacitacion registrar(Capacitacion capacitacion) {
		return capaRepo.save(capacitacion);
	}
	
	public CapacitacionService() {
		super();
	}
	
	public List<Capacitacion> getAll(){
		return capaRepo.findAll();
	}
	
	public Capacitacion get(int id) {
		return capaRepo.findById(id).get();
	}
	
	public Capacitacion getOne(int id) {
		return capaRepo.getOne(id);
	}
	
	public void create(Capacitacion c) {
		capaRepo.save(c);
	}
	
	public void update(Capacitacion p) {
		capaRepo.save(p);
	}
	
	public void deleteById(int id) {
		capaRepo.deleteById(id);
	}
	
	public void delete(int id) {
		capaRepo.delete(capaRepo.getOne(id));
	}
}
