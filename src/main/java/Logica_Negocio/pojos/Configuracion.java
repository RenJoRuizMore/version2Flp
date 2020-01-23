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
public class Configuracion {
    int id_configuracion;
    double costo_malla;
    double tipo_cambio_venta;
    double tipo_cambio_compra;
    double kilo_por_caja;
    int cajas_por_pallet;
    int pallet_por_contenedor;
    double precio_pallet_mar;
    double precio_pallet_aire;
    int estado;

    public int getId_configuracion() {
        return id_configuracion;
    }

    public void setId_configuracion(int id_configuracion) {
        this.id_configuracion = id_configuracion;
    }

    public double getCosto_malla() {
        return costo_malla;
    }

    public void setCosto_malla(double costo_malla) {
        this.costo_malla = costo_malla;
    }

    public double getTipo_cambio_venta() {
        return tipo_cambio_venta;
    }

    public void setTipo_cambio_venta(double tipo_cambio_venta) {
        this.tipo_cambio_venta = tipo_cambio_venta;
    }

    public double getTipo_cambio_compra() {
        return tipo_cambio_compra;
    }

    public void setTipo_cambio_compra(double tipo_cambio_compra) {
        this.tipo_cambio_compra = tipo_cambio_compra;
    }

    public double getKilo_por_caja() {
        return kilo_por_caja;
    }

    public void setKilo_por_caja(double kilo_por_caja) {
        this.kilo_por_caja = kilo_por_caja;
    }

    public int getCajas_por_pallet() {
        return cajas_por_pallet;
    }

    public void setCajas_por_pallet(int cajas_por_pallet) {
        this.cajas_por_pallet = cajas_por_pallet;
    }

    public int getPallet_por_contenedor() {
        return pallet_por_contenedor;
    }

    public void setPallet_por_contenedor(int pallet_por_contenedor) {
        this.pallet_por_contenedor = pallet_por_contenedor;
    }

    public double getPrecio_pallet_mar() {
        return precio_pallet_mar;
    }

    public void setPrecio_pallet_mar(double precio_pallet_mar) {
        this.precio_pallet_mar = precio_pallet_mar;
    }

    public double getPrecio_pallet_aire() {
        return precio_pallet_aire;
    }

    public void setPrecio_pallet_aire(double precio_pallet_aire) {
        this.precio_pallet_aire = precio_pallet_aire;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
    
    
    
}
