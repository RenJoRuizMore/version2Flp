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
public class jefe_area {
    private int id_jefe_area;
    private Persona obj_persona;
    private Area_produccion obj_area_produccion;
    private int estado;

    public int getId_jefe_area() {
        return id_jefe_area;
    }

    public void setId_jefe_area(int id_jefe_area) {
        this.id_jefe_area = id_jefe_area;
    }

    public Persona getObj_persona() {
        return obj_persona;
    }

    public void setObj_persona(Persona obj_persona) {
        this.obj_persona = obj_persona;
    }

    public Area_produccion getObj_area_produccion() {
        return obj_area_produccion;
    }

    public void setObj_area_produccion(Area_produccion obj_area_produccion) {
        this.obj_area_produccion = obj_area_produccion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
    
    
}
