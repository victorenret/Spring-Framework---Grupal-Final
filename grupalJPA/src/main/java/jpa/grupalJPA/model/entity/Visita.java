package jpa.grupalJPA.model.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="visitas")
public class Visita {
	
	@Id
	private int id;
	private String rutCliente, fecha, hora, direccion, comentario, nombreCheck, estado;
	
	public Visita() {
		super();
	}

	public Visita(int id, String rutCliente, String fecha, String hora, String direccion, String comentario,
			String nombreCheck, String estado) {
		super();
		this.id = id;
		this.rutCliente = rutCliente;
		this.fecha = fecha;
		this.hora = hora;
		this.direccion = direccion;
		this.comentario = comentario;
		this.nombreCheck = nombreCheck;
		this.estado = estado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRutCliente() {
		return rutCliente;
	}

	public void setRutCliente(String rutCliente) {
		this.rutCliente = rutCliente;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public String getNombreCheck() {
		return nombreCheck;
	}

	public void setNombreCheck(String nombreCheck) {
		this.nombreCheck = nombreCheck;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	
	

}
