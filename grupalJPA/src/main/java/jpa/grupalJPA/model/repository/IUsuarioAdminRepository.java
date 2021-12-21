package jpa.grupalJPA.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import jpa.grupalJPA.model.entity.UsuarioAdministrativo;

public interface IUsuarioAdminRepository extends JpaRepository<UsuarioAdministrativo, Integer>{

}
