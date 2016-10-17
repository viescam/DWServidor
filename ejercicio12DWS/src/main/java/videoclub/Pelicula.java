/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videoclub;


public class Pelicula {
    
    private String nombre;
    private String diasDeAlquiler;
    private String edadMaxCliente;
    private String formaPago;
    private String especificaciones;

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

   

    /**
     * @return the edadMaxCliente
     */
    public String getEdadMaxCliente() {
        return edadMaxCliente;
    }

    /**
     * @param edadMaxCliente the edadMaxCliente to set
     */
    public void setEdadMaxCliente(String edadMaxCliente) {
        this.edadMaxCliente = edadMaxCliente;
    }

    /**
     * @return the formaPago
     */
    public String getFormaPago() {
        return formaPago;
    }

    /**
     * @param formaPago the formaPago to set
     */
    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }

    /**
     * @return the Especificaciones
     */
    public String getEspecificaciones() {
        return especificaciones;
    }

    /**
     * @param especificaciones the Especificaciones to set
     */
    public void setEspecificaciones(String especificaciones) {
        this.especificaciones = especificaciones;
    }

    /**
     * @return the diasDeAlquiler
     */
    public String getDiasDeAlquiler() {
        return diasDeAlquiler;
    }

    /**
     * @param diasDeAlquiler the diasDeAlquiler to set
     */
    public void setDiasDeAlquiler(String diasDeAlquiler) {
        this.diasDeAlquiler = diasDeAlquiler;
    }
    
}
