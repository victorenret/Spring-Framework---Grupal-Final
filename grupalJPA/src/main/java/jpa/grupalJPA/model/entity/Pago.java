package jpa.grupalJPA.model.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pagos")
public class Pago {

	@Id
	private int id;
	private int monto;
	private String rut, nombre, fecha, comentario;
	
	public Pago() {
		super();
	}

	public Pago(int id, int monto, String rut, String nombre, String fecha, String comentario) {
		super();
		this.id = id;
		this.monto = monto;
		this.rut = rut;
		this.nombre = nombre;
		this.fecha = fecha;
		this.comentario = comentario;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMonto() {
		return monto;
	}

	public void setMonto(int monto) {
		this.monto = monto;
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

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	
}
