/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica_Negocio.pojos;

import java.sql.Date;

/**
 *
 * @author Rene Jose
 */
public class Producto {
    private int id_producto;
    private String nombre;
    private String descipcion;
    private String chapa;
    private double peso;
    private Date fecha_registro;
    private Date fecha_publicacion;
    private String tipo_caja;
    private byte[] foto;
    private int calificacion;
    private double precio_por_kilo;
    private int estado;

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescipcion() {
        return descipcion;
    }

    public void setDescipcion(String descipcion) {
        this.descipcion = descipcion;
    }

    public String getChapa() {
        return chapa;
    }

    public void setChapa(String chapa) {
        this.chapa = chapa;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public Date getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public Date getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(Date fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public String getTipo_caja() {
        return tipo_caja;
    }

    public void setTipo_caja(String tipo_caja) {
        this.tipo_caja = tipo_caja;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public int getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }

    public double getPrecio_por_kilo() {
        return precio_por_kilo;
    }

    public void setPrecio_por_kilo(double precio_por_kilo) {
        this.precio_por_kilo = precio_por_kilo;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

        
    
    
}
