/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Connection.DB_Manager;
import Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author juana
 */
public class DAO_Usuario {
    
    DB_Manager db_manager;
    Connection connection;
    
    public DAO_Usuario() {
        db_manager = new DB_Manager();
        connection = db_manager.getConnection();
    }
    
    public Usuario login(String nombre, String pss) {
        Usuario usuario = new Usuario();
        String SQL = "select * from usuario where correo = '" + nombre + "' and password = '" + pss + "'";
        System.out.println(SQL);
        try {
            PreparedStatement ps = connection.prepareCall(SQL);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuario.setId_Usuario(rs.getInt(1));
                usuario.setCorreo(rs.getString(2));
                usuario.setNombre(rs.getString(3));
                usuario.setAmaterno(rs.getString(5));
                usuario.setApaterno(rs.getString(4));
                usuario.setEdad(rs.getInt(6));
                usuario.setSexo(rs.getString(7));
                usuario.setTelefono(rs.getString(8));
                usuario.setCalle(rs.getString(9));
                usuario.setColonia(rs.getString(10));
                usuario.setMunicipio(rs.getString(11));
                usuario.setEstado(rs.getString(12));
                usuario.setTipo(rs.getString(13));
                usuario.setPassword(rs.getString(14));
                return usuario;
            } else {
                System.out.println("NO Encontrado");
                return null;
            }
        } catch (Exception e) {
            System.out.println("Error $Usuarios > login : " + e);
            return null;
        }
    }
}
