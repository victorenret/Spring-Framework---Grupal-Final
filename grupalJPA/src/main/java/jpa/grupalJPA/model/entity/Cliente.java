package jpa.grupalJPA.model.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "clientes")
public class Cliente {
	
	@Id
	private int idcliente;

	private String rut, nombre, direccion;

	public Cliente() {
		super();
	}

	public Cliente(int idcliente, String rut, String nombre, String direccion) {
		super();
		this.idcliente = idcliente;
		this.rut = rut;
		this.nombre = nombre;
		this.direccion = direccion;
	}

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	@Override
	public String toString() {
		return "Cliente [idcliente=" + idcliente + ", rut=" + rut + ", nombre=" + nombre + ", direccion=" + direccion
				+ "]";
	}
	
}
