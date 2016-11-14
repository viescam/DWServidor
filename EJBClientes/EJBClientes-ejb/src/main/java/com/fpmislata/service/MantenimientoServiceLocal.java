/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.service;

import clasesJava.Cliente;
import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author alumno
 */
@Local
public interface MantenimientoServiceLocal {

    ArrayList<Cliente> listar();

    void borrar(Cliente cliente);

    void anyadir(Cliente cliente);

    void modificar(Cliente cliente);
    
}
