/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.service;

import javax.ejb.Local;

/**
 *
 * @author alumno
 */
@Local
public interface CalculadoraServiceLocal {

    double calculaAreaCirculo(double radio);

    double calcularAreaCuadrado(double lado);

    double calcularAreaTriangulo(double base, double altura);

    double calcularAreaTrapecio(double base1, double base2, double altura);
    
}
