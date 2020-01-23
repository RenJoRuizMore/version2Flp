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
public class Area_produccion {
    private int id_area_produccion;
    private String nombre_area_produccion;
    private int orden;
    private int estado;

    public int getId_area_produccion() {
        return id_area_produccion;
    }

    public void setId_area_produccion(int id_area_produccion) {
        this.id_area_produccion = id_area_produccion;
    }

    public String getNombre_area_produccion() {
        return nombre_area_produccion;
    }

    public void setNombre_area_produccion(String nombre_area_produccion) {
        this.nombre_area_produccion = nombre_area_produccion;
    }

    public int getOrden() {
        return orden;
    }

    public void setOrden(int orden) {
        this.orden = orden;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
}
