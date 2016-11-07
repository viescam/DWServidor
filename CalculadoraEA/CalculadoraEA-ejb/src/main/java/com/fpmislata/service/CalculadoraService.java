/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.service;

import javax.ejb.Stateless;

/**
 *
 * @author alumno
 */
//Esto es la implementacion del EJB
@Stateless
public class CalculadoraService implements CalculadoraServiceLocal {
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @Override
    public double calculaAreaCirculo(double radio) {
        return Math.PI*Math.pow(radio,2.0);
        
    }
    @Override
    public double calcularAreaCuadrado(double lado) {
        return Math.pow(lado,2.0);
    }
    @Override
    public double calcularAreaTriangulo(double base, double altura) {
        return (base*altura)/2;
    }

    @Override
    public double calcularAreaTrapecio(double base1, double base2, double altura) {
        return (base1+base2)*altura/2;
    }
    
    
    
    

    

    
}
