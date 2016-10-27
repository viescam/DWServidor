/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tienda;

/**
 *
 * @author alumno
 */
public class Producto {
    
    private int id;
    private String nombre;    
    private double precio;
    private int cantidad;
    private double precioFinal;
    
    public Producto(int id,String nombre,double precio,int cantidad){
        this.id=id;
        this.nombre=nombre;
        this.precio=precio;
        this.cantidad=cantidad;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id toset
     */
    public void setId(int id) {
        this.id = id;
    }
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
     * @return the precio
     */
    public double getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(double precio) {
        this.precio = precio;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the precioFinal
     */
    public double getPrecioFinal() {
        return precioFinal;
    }

    /**
     * @param precioFinal the precioFinal to set
     */
    public void setPrecioFinal(double precioFinal) {
        this.precioFinal = precioFinal;
    }
    public void calcularPrecioFinal() {
        this.precioFinal = this.cantidad*this.precio;
    }
    
    
   

    
}
