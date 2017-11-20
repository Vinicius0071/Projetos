/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Vinícius
 */
import javax.swing.JOptionPane;

public class Veiculo extends Cliente {

    protected String modelo;

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public Veiculo(String modelo) {
        this.modelo = modelo;
    }

    public Veiculo() {
    }

}
