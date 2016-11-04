/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Local;

/**
 *
 * @author alumno
 */
@Local
public interface Calculadora2EJBLocal {
    
    double calculaAreaCirculo (double radio);
    double calculaAreaCuadrado (double lado);
    double calculaAreaTriangulo (double base,double altura);
    double calculaAreaTrapecio (double base1,double base2,double altura);
    
}
