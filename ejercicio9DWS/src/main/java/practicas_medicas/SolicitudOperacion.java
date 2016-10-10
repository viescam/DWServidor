/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practicas_medicas;


public class SolicitudOperacion {
    private String practica;
    private int cantidad;
    private String estadoAutorizacion;
    private String motivoRechazo;
    private double numeroAleatorio;
 
    public String getPractica() {
        return practica;
    }

    public void setPractica(String practica) {
        this.practica = practica;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    public double getNumeroAleatorio() {
        return numeroAleatorio;
    }

    public void setNumeroAleatorio(double numeroAleatorio) {
        this.numeroAleatorio = numeroAleatorio;
        calcularEstado();
    }
    
    private void calcularEstado(){
       if(this.numeroAleatorio < 0.5) {
                this.estadoAutorizacion="Autorizada";
                 this.motivoRechazo="";
            }
            else{
                this.estadoAutorizacion="Rechazada";
                asignarMotivoRechazo();
            } 
    }
    
    public String getEstadoAutorizacion() {
        return estadoAutorizacion;
    }
    
    private void asignarMotivoRechazo() {
        String[] motivosRechazo={"La autorización se realizó fuera de plazo", "No quedan suficientes suministros para administrar esa cantidad",
            "No existe conexión con el servidor"};
        int aleatorio = (int) (this.numeroAleatorio * 3 + 0);
        this.motivoRechazo=motivosRechazo[aleatorio];
         
    }
    
    public String getMotivoRechazo(){
        return motivoRechazo;
    }
    
    
}


