package jpa.grupalJPA.model.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="administrativos")
public class UsuarioAdministrativo extends Usuario{
	
	private String area, expPrevia;
	
	public UsuarioAdministrativo() {
		super();
	}

	public UsuarioAdministrativo(int id, String nombre, String rut, String fechaNac, String area, String expPrevia) {
		super(id, nombre, rut, fechaNac);
		this.area = area;
		this.expPrevia = expPrevia;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExpPrevia() {
		return expPrevia;
	}

	public void setExpPrevia(String expPrevia) {
		this.expPrevia = expPrevia;
	}
	
	
	
	

}
