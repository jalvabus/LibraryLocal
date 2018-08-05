/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.*;
import Connection.DB_Manager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author juana
 */
public class DAO_PuntosCompra {

    DB_Manager db_manager;
    Connection connection;

    public DAO_PuntosCompra() {
        db_manager = new DB_Manager();
        connection = db_manager.getConnection();
    }

    public boolean insertPuntos(PuntosCompra puntos) {
        try {
            String SQL = "INSERT INTO puntosCompra VALUES (null, '" + puntos.getIdUsuario() + "','" + puntos.getPuntos() + "')";
            System.out.println(SQL);
            PreparedStatement ps = connection.prepareCall(SQL);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public PuntosCompra getPuntosByID(int idUsuario) {
        PuntosCompra puntos = new PuntosCompra();
        try {
            String SQL = "select * from puntosCompra where id_usuario = '" + idUsuario + "';";
            System.out.println(SQL);
            PreparedStatement ps = connection.prepareCall(SQL);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                puntos.setIdPuntosCompra(rs.getInt(1));
                puntos.setIdUsuario(rs.getInt(2));
                puntos.setPuntos(rs.getInt(3));
            }
        } catch (Exception e) {
            System.out.println("Error DAO_PuntosCompra > getPuntosByID: " + e);
        }
        return puntos;
    }

    public boolean actualizarPuntos(PuntosCompra puntos) {
        try {
            String SQL = "Update puntosCompra set puntos = '" + puntos.getPuntos() + "' where idPuntosCompra = '" + puntos.getIdPuntosCompra() + "' ";
            System.out.println(SQL);
            PreparedStatement ps = connection.prepareCall(SQL);
            ps.executeUpdate();
            return false;
        } catch (Exception e) {
            System.out.println("Error DAO_PuntosCompra > getPuntosByID: " + e);
            return false;
        }
    }
}
