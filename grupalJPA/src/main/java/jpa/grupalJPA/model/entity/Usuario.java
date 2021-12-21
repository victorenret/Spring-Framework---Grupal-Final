package jpa.grupalJPA.model.entity;


import javax.persistence.Id;
import javax.persistence.MappedSuperclass;


@MappedSuperclass
public class Usuario {

	@Id
	private int id;
	private String nombre, rut, fechaNac;
	
	public Usuario() {
		super();
	}

	public Usuario(int id, String nombre, String rut, String fechaNac) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.rut = rut;
		this.fechaNac = fechaNac;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getFechaNac() {
		return fechaNac;
	}

	public void setFechaNac(String fechaNac) {
		this.fechaNac = fechaNac;
	}
	
	
	
}
