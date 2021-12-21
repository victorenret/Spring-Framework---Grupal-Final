package jpa.grupalJPA.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import jpa.grupalJPA.model.entity.Cliente;

public interface IClienteRepository extends JpaRepository<Cliente, Integer>{

}
