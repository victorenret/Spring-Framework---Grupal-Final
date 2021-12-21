package jpa.grupalJPA.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jpa.grupalJPA.model.entity.Visita;
import jpa.grupalJPA.model.repository.IVisitaRepository;

@Service
public class VisitaService {

	@Autowired
	private IVisitaRepository visitaRepo;
	
	public List<Visita> getAll(){
		return visitaRepo.findAll();
	}
	
	public Visita get(int id) {
		return visitaRepo.findById(id).get();
	}
	
	public Visita getOne(int id) {
		return visitaRepo.getOne(id);
	}
	
	public void create(Visita v) {
		visitaRepo.save(v);
	}
	
	public void update(Visita v) {
		visitaRepo.save(v);
	}
	
	public void deleteById(int id) {
		visitaRepo.deleteById(id);
	}
	
	public void delete(int id) {
		visitaRepo.delete(visitaRepo.getOne(id));
	}
	
	
}
