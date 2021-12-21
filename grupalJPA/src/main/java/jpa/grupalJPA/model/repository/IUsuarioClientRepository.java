package jpa.grupalJPA.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import jpa.grupalJPA.model.entity.UsuarioCliente;

public interface IUsuarioClientRepository extends JpaRepository<UsuarioCliente, Integer> {

}
