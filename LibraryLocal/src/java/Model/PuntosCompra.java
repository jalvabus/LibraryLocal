/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author juana
 */
public class PuntosCompra {

    private int idPuntosCompra;
    private int idUsuario;
    private int puntos;

    public PuntosCompra() {
    }

    public int getIdPuntosCompra() {
        return idPuntosCompra;
    }

    public void setIdPuntosCompra(int idPuntosCompra) {
        this.idPuntosCompra = idPuntosCompra;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

}
