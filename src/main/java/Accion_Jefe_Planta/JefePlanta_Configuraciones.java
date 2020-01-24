/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Accion_Jefe_Planta;

/**
 *
 * @author Rene Jose
 */

import Logica_Negocio.pojos.Configuracion;
import conexion.BaseConexion;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.CallableStatement;
import javax.swing.JOptionPane;
public class JefePlanta_Configuraciones {
    Configuracion obj_configuracion;
    // listar la configuracion 

    double costo_malla_e;
    double kilo_por_caja_e; 
   
    double tipo_cambio_venta_e;
    
    double tipo_cambio_compra_e;
    int cajas_por_pallet_e ;
    int pallet_por_contenedor_e;
    double precio_pallet_aire_e;
    double precio_pallet_mar_e ;
    
    public Configuracion getObj_configuracion() {
        return obj_configuracion;
    }

    public void setObj_configuracion(Configuracion obj_configuracion) {
        this.obj_configuracion = obj_configuracion;
    }

    public double getCosto_malla_e() {
        return costo_malla_e;
    }

    public void setCosto_malla_e(double costo_malla_e) {
        this.costo_malla_e = costo_malla_e;
    }

    public double getKilo_por_caja_e() {
        return kilo_por_caja_e;
    }

    public void setKilo_por_caja_e(double kilo_por_caja_e) {
        this.kilo_por_caja_e = kilo_por_caja_e;
    }
  
    public double getTipo_cambio_venta_e() {
        return tipo_cambio_venta_e;
    }

    public void setTipo_cambio_venta_e(double tipo_cambio_venta_e) {
        this.tipo_cambio_venta_e = tipo_cambio_venta_e;
    }
    
    public double getTipo_cambio_compra_e() {
        return tipo_cambio_compra_e;
    }

    public void setTipo_cambio_compra_e(double tipo_cambio_compra_e) {
        this.tipo_cambio_compra_e = tipo_cambio_compra_e;
    }

    public int getCajas_por_pallet_e() {
        return cajas_por_pallet_e;
    }

    

    public int getPallet_por_contenedor_e() {
        return pallet_por_contenedor_e;
    }

    public void setCajas_por_pallet_e(int cajas_por_pallet_e) {
        this.cajas_por_pallet_e = cajas_por_pallet_e;
    }

    public void setPallet_por_contenedor_e(int pallet_por_contenedor_e) {
        this.pallet_por_contenedor_e = pallet_por_contenedor_e;
    }

    

    public double getPrecio_pallet_aire_e() {
        return precio_pallet_aire_e;
    }

    public void setPrecio_pallet_aire_e(double precio_pallet_aire_e) {
        this.precio_pallet_aire_e = precio_pallet_aire_e;
    }

    public double getPrecio_pallet_mar_e() {
        return precio_pallet_mar_e;
    }

    public void setPrecio_pallet_mar_e(double precio_pallet_mar_e) {
        this.precio_pallet_mar_e = precio_pallet_mar_e;
    }
    
    
    
    public String listar_configuracion(){
       try{
          obj_configuracion = new Configuracion();
          String sql_listar = "select * from configuracion";
          ResultSet resultado= BaseConexion.getStatement().executeQuery(sql_listar);
          while(resultado.next()){
             obj_configuracion.setId_configuracion(resultado.getInt(1));
             obj_configuracion.setCosto_malla(resultado.getDouble(2));
             obj_configuracion.setTipo_cambio_venta(resultado.getDouble(3));
             obj_configuracion.setTipo_cambio_compra(resultado.getDouble(4));
             obj_configuracion.setKilo_por_caja(resultado.getDouble(5));
             obj_configuracion.setCajas_por_pallet(resultado.getInt(6));
             obj_configuracion.setPallet_por_contenedor(resultado.getInt(7));
             obj_configuracion.setPrecio_pallet_mar(resultado.getDouble(8));
             obj_configuracion.setPrecio_pallet_aire(resultado.getDouble(9));
          }
          return "success";
       }
       catch(SQLException ex){
               return "error";
       }
    }
    
    public String guardar_configuracion() {
        try {
            String sql= "{call sp_actualizar_configuracion(?, ?, ?, ?, ?, ?, ?,?)}";
            CallableStatement call= BaseConexion.getprepareCall(sql);
            call.setDouble(1,getCosto_malla_e());
            call.setDouble(2,getTipo_cambio_venta_e());
            call.setDouble(3,getTipo_cambio_compra_e());
            call.setDouble(4,getKilo_por_caja_e());
            call.setInt(5,getCajas_por_pallet_e());
            call.setInt(6,getPallet_por_contenedor_e());
            call.setDouble(7,getPrecio_pallet_mar_e());
            call.setDouble(8,getPrecio_pallet_aire_e());
            call.executeUpdate();
            return "success";
        } catch (SQLException ex) {
           
           return "error";
        }
    }
;
    
    
    
}
