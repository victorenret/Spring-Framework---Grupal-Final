package jpa.grupalJPA.model.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="profesionales")
public class UsuarioProfesional extends Usuario {

	private String titulo, fechaIngreso;
	
	public UsuarioProfesional() {
		super();
	}

	public UsuarioProfesional(int id, String nombre, String rut, String fechaNac, String titulo, String fechaIngreso) {
		super(id, nombre, rut, fechaNac);
		this.titulo = titulo;
		this.fechaIngreso = fechaIngreso;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getFechaIngreso() {
		return fechaIngreso;
	}

	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}
	
	
	
}
