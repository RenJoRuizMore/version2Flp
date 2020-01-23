/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica_Negocio.pojos;

/**
 *
 * @author Rene Jose
 */
public class Tarjeta {
    private int id_tarjeta;
    private String numero_tarjeta;
    private int mes_vencimiento;
    private int anio_vencimiento;

    public int getId_tarjeta() {
        return id_tarjeta;
    }

    public void setId_tarjeta(int id_tarjeta) {
        this.id_tarjeta = id_tarjeta;
    }

    public String getNumero_tarjeta() {
        return numero_tarjeta;
    }

    public void setNumero_tarjeta(String numero_tarjeta) {
        this.numero_tarjeta = numero_tarjeta;
    }

    public int getMes_vencimiento() {
        return mes_vencimiento;
    }

    public void setMes_vencimiento(int mes_vencimiento) {
        this.mes_vencimiento = mes_vencimiento;
    }

    public int getAnio_vencimiento() {
        return anio_vencimiento;
    }

    public void setAnio_vencimiento(int anio_vencimiento) {
        this.anio_vencimiento = anio_vencimiento;
    }
    
    
    
    
}
