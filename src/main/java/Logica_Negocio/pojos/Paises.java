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
public class Paises {
    private int id_paises;
    private String nombre_paises;
    private int max_dias_llegada;
    private int min_dias_llegada;
    private int estado;

    public int getId_paises() {
        return id_paises;
    }

    public void setId_paises(int id_paises) {
        this.id_paises = id_paises;
    }

    public String getNombre_paises() {
        return nombre_paises;
    }

    public void setNombre_paises(String nombre_paises) {
        this.nombre_paises = nombre_paises;
    }

    public int getMax_dias_llegada() {
        return max_dias_llegada;
    }

    public void setMax_dias_llegada(int max_dias_llegada) {
        this.max_dias_llegada = max_dias_llegada;
    }

    public int getMin_dias_llegada() {
        return min_dias_llegada;
    }

    public void setMin_dias_llegada(int min_dias_llegada) {
        this.min_dias_llegada = min_dias_llegada;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
    
    
}
