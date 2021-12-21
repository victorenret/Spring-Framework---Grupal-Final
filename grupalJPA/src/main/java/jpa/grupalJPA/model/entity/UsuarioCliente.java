package jpa.grupalJPA.model.entity;

import javax.persistence.Entity;
import javax.persistence.Table;



@Entity
@Table(name="clientes")
public class UsuarioCliente extends Usuario{
	
	private String apellidos, telefono, afp, prevSalud, direccion, comuna;
	
	public UsuarioCliente () {
		super();
	}

	public UsuarioCliente(int id, String nombre, String rut, String fechaNac, String apellidos, String telefono,
			String afp, String prevSalud, String direccion, String comuna) {
		super(id, nombre, rut, fechaNac);
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.prevSalud = prevSalud;
		this.direccion = direccion;
		this.comuna = comuna;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getAfp() {
		return afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public String getPrevSalud() {
		return prevSalud;
	}

	public void setPrevSalud(String prevSalud) {
		this.prevSalud = prevSalud;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	
	
}
