/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica_Negocio.pojos;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author Rene Jose
 */
public class Movimiento_Pedido {
    private int id_movimiento_pedido;
    private Pedido obj_pedido;
    private Area_produccion area_emisora;
    private Area_produccion area_destino;
    private Date fecha_emision;
    private Time hora_emision;
    private Date fecha_recptor;
    private Time hora_receptor;
    private String descripcion;
    private int estado;
    private int estado_movimiento;

    public int getId_movimiento_pedido() {
        return id_movimiento_pedido;
    }

    public void setId_movimiento_pedido(int id_movimiento_pedido) {
        this.id_movimiento_pedido = id_movimiento_pedido;
    }

    public Pedido getObj_pedido() {
        return obj_pedido;
    }

    public void setObj_pedido(Pedido obj_pedido) {
        this.obj_pedido = obj_pedido;
    }

    public Area_produccion getArea_emisora() {
        return area_emisora;
    }

    public void setArea_emisora(Area_produccion area_emisora) {
        this.area_emisora = area_emisora;
    }

    public Area_produccion getArea_destino() {
        return area_destino;
    }

    public void setArea_destino(Area_produccion area_destino) {
        this.area_destino = area_destino;
    }

    public Date getFecha_emision() {
        return fecha_emision;
    }

    public void setFecha_emision(Date fecha_emision) {
        this.fecha_emision = fecha_emision;
    }

    public Time getHora_emision() {
        return hora_emision;
    }

    public void setHora_emision(Time hora_emision) {
        this.hora_emision = hora_emision;
    }

    public Date getFecha_recptor() {
        return fecha_recptor;
    }

    public void setFecha_recptor(Date fecha_recptor) {
        this.fecha_recptor = fecha_recptor;
    }

    public Time getHora_receptor() {
        return hora_receptor;
    }

    public void setHora_receptor(Time hora_receptor) {
        this.hora_receptor = hora_receptor;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getEstado_movimiento() {
        return estado_movimiento;
    }

    public void setEstado_movimiento(int estado_movimiento) {
        this.estado_movimiento = estado_movimiento;
    }
    
    
    
    
    
}
