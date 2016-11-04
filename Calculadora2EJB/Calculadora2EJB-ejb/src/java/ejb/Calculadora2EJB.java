/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Stateless;

/**
 *
 * @author alumno
 */
@Stateless
public class Calculadora2EJB implements Calculadora2EJBLocal {

    @Override
    
    public double calculaAreaCirculo(double radio) {
        return Math.PI*Math.pow(radio, 2.0);
    }

    @Override
    public double calculaAreaCuadrado(double lado) {
        return Math.pow(lado, 2.0);
    }

    @Override
    public double calculaAreaTriangulo(double base, double altura) {
        return (base*altura)/2;
    }

    @Override
    public double calculaAreaTrapecio(double base1, double base2, double altura) {
        return ((base1+base2)*altura)/2;
    }
}
