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
public class Pedido {
    private int id_pedido;
    private String codigo_pedido;
    private Date fecha;
    private int max_dias_llegada;
    private String tipo_envio;
    private int cantidad_contenedores;
    private int emplea_malla;
    private double precio_por_kilogramo;
    private double precio_total_pedido;
    private String destinatario;
    private String direccion;
    private String email;
    private Paises obj_pais;
    private String region_provincias;
    private String ciudad;
    private String codigo_postal;
    private String telefono;
    private byte[] archivo;
    private String observaciones;
    private int estado;
    private int estado_pedido;
    private Cliente obj_cliente;
    private Producto obj_producto;
    // campos extras para manejo de pojhos 
    private String nombre_producto;
    private int dias_restantes;
    private String pregunta;
    private int id_pais;
    private int id_cliente;

    private int id_producto;
    
    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }
    
    
    
    
    
    public int getId_pais() {
        return id_pais;
    }

    public void setId_pais(int id_pais) {
        this.id_pais = id_pais;
    }

    
    
    
    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }
    
    
    
    public int getDias_restantes() {
        return dias_restantes;
    }

    public void setDias_restantes(int dias_restantes) {
        this.dias_restantes = dias_restantes;
    }
    
    
    
    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }
    

    
    
    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public String getCodigo_pedido() {
        return codigo_pedido;
    }

    public void setCodigo_pedido(String codigo_pedido) {
        this.codigo_pedido = codigo_pedido;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getMax_dias_llegada() {
        return max_dias_llegada;
    }

    public void setMax_dias_llegada(int max_dias_llegada) {
        this.max_dias_llegada = max_dias_llegada;
    }

    public String getTipo_envio() {
        return tipo_envio;
    }

    public void setTipo_envio(String tipo_envio) {
        this.tipo_envio = tipo_envio;
    }

    public int getCantidad_contenedores() {
        return cantidad_contenedores;
    }

    public void setCantidad_contenedores(int cantidad_contenedores) {
        this.cantidad_contenedores = cantidad_contenedores;
    }

    public int getEmplea_malla() {
        return emplea_malla;
    }

    public void setEmplea_malla(int emplea_malla) {
        this.emplea_malla = emplea_malla;
    }

    public double getPrecio_por_kilogramo() {
        return precio_por_kilogramo;
    }

    public void setPrecio_por_kilogramo(double precio_por_kilogramo) {
        this.precio_por_kilogramo = precio_por_kilogramo;
    }

    public double getPrecio_total_pedido() {
        return precio_total_pedido;
    }

    public void setPrecio_total_pedido(double precio_total_pedido) {
        this.precio_total_pedido = precio_total_pedido;
    }

    public String getDestinatario() {
        return destinatario;
    }

    public void setDestinatario(String destinatario) {
        this.destinatario = destinatario;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Paises getObj_pais() {
        return obj_pais;
    }

    public void setObj_pais(Paises obj_pais) {
        this.obj_pais = obj_pais;
    }

    public String getRegion_provincias() {
        return region_provincias;
    }

    public void setRegion_provincias(String region_provincias) {
        this.region_provincias = region_provincias;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCodigo_postal() {
        return codigo_postal;
    }

    public void setCodigo_postal(String codigo_postal) {
        this.codigo_postal = codigo_postal;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public byte[] getArchivo() {
        return archivo;
    }

    public void setArchivo(byte[] archivo) {
        this.archivo = archivo;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getEstado_pedido() {
        return estado_pedido;
    }

    public void setEstado_pedido(int estado_pedido) {
        this.estado_pedido = estado_pedido;
    }

    public Cliente getObj_cliente() {
        return obj_cliente;
    }

    public void setObj_cliente(Cliente obj_cliente) {
        this.obj_cliente = obj_cliente;
    }

    public Producto getObj_producto() {
        return obj_producto;
    }

    public void setObj_producto(Producto obj_producto) {
        this.obj_producto = obj_producto;
    }
    
   
    
}
