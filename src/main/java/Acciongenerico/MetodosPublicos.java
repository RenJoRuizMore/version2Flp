/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Acciongenerico;

import conexion.BaseConexion;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Rene Jose
 */
public class MetodosPublicos {
    // agregar las variables de registro de clientes 
       String txtnombre_representante_e ;
       String  txtrazon_social_e ;
       String  txtemail_e;
       String  txt_pais_e;
       String  txt_region_e ;
       String txt_ciudad_e;
       String txt_direccion_e;
       String txt_codigo_postal_e;
       String  txt_telefono_e;
       String txt_usuario;
       String  txt_contra_e ;
       String  txt_tarjeta_e ;
       String  txt_verificacion_e ;
       int  txt_mes_vencimiento_e ;
       int  txt_año_e;

    public String getTxtnombre_representante_e() {
        return txtnombre_representante_e;
    }

    public void setTxtnombre_representante_e(String txtnombre_representante_e) {
        this.txtnombre_representante_e = txtnombre_representante_e;
    }

    public String getTxtrazon_social_e() {
        return txtrazon_social_e;
    }

    public void setTxtrazon_social_e(String txtrazon_social_e) {
        this.txtrazon_social_e = txtrazon_social_e;
    }

    public String getTxtemail_e() {
        return txtemail_e;
    }

    public void setTxtemail_e(String txtemail_e) {
        this.txtemail_e = txtemail_e;
    }

    public String getTxt_pais_e() {
        return txt_pais_e;
    }

    public void setTxt_pais_e(String txt_pais_e) {
        this.txt_pais_e = txt_pais_e;
    }

    public String getTxt_region_e() {
        return txt_region_e;
    }

    public void setTxt_region_e(String txt_region_e) {
        this.txt_region_e = txt_region_e;
    }

    public String getTxt_ciudad_e() {
        return txt_ciudad_e;
    }

    public void setTxt_ciudad_e(String txt_ciudad_e) {
        this.txt_ciudad_e = txt_ciudad_e;
    }

    public String getTxt_direccion_e() {
        return txt_direccion_e;
    }

    public void setTxt_direccion_e(String txt_direccion_e) {
        this.txt_direccion_e = txt_direccion_e;
    }

    public String getTxt_codigo_postal_e() {
        return txt_codigo_postal_e;
    }

    public void setTxt_codigo_postal_e(String txt_codigo_postal_e) {
        this.txt_codigo_postal_e = txt_codigo_postal_e;
    }

    public String getTxt_telefono_e() {
        return txt_telefono_e;
    }

    public void setTxt_telefono_e(String txt_telefono_e) {
        this.txt_telefono_e = txt_telefono_e;
    }

    public String getTxt_contra_e() {
        return txt_contra_e;
    }

    public void setTxt_contra_e(String txt_contra_e) {
        this.txt_contra_e = txt_contra_e;
    }

    public String getTxt_tarjeta_e() {
        return txt_tarjeta_e;
    }

    public void setTxt_tarjeta_e(String txt_tarjeta_e) {
        this.txt_tarjeta_e = txt_tarjeta_e;
    }

    public String getTxt_verificacion_e() {
        return txt_verificacion_e;
    }

    public void setTxt_verificacion_e(String txt_verificacion_e) {
        this.txt_verificacion_e = txt_verificacion_e;
    }

    public int getTxt_mes_vencimiento_e() {
        return txt_mes_vencimiento_e;
    }

    public void setTxt_mes_vencimiento_e(int txt_mes_vencimiento_e) {
        this.txt_mes_vencimiento_e = txt_mes_vencimiento_e;
    }

    

    public int getTxt_año_e() {
        return txt_año_e;
    }

    public void setTxt_año_e(int txt_año_e) {
        this.txt_año_e = txt_año_e;
    }

    public String getTxt_usuario() {
        return txt_usuario;
    }

    public void setTxt_usuario(String txt_usuario) {
        this.txt_usuario = txt_usuario;
    }
    
    // metodo de registrar cliente nuevo 
    public String registrar_usuario(){
        try{
        CallableStatement call_sentencia= BaseConexion.getprepareCall("{call sp_registrar_cliente(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        call_sentencia.setString(1,getTxtnombre_representante_e());
        call_sentencia.setString(2,getTxtrazon_social_e());
        call_sentencia.setString(3,getTxtemail_e());
        call_sentencia.setString(4,getTxt_pais_e());
        call_sentencia.setString(5,getTxt_region_e());
        call_sentencia.setString(6,getTxt_ciudad_e());
        call_sentencia.setString(7,getTxt_direccion_e());
        call_sentencia.setString(8,getTxt_codigo_postal_e());
        call_sentencia.setString(9,getTxt_telefono_e());
        call_sentencia.setString(10,getTxt_usuario());
        call_sentencia.setString(11,getTxt_contra_e());
        call_sentencia.setString(12,getTxt_tarjeta_e());
        call_sentencia.setInt(13,getTxt_mes_vencimiento_e());
        call_sentencia.setInt(14,getTxt_año_e());
        call_sentencia.executeUpdate();
            return "success";
        }catch(SQLException ex){
            return "error";
        }
    }
    
    
    
}
