/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.*;
import java.awt.HeadlessException;
import javax.swing.JOptionPane;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author Vinícius
 */
public class GerarCorrida {

    protected Cliente cliente;
    protected Viagem viagem;
    protected Executivo executivo;
    protected Economico economico;
    private int tipo;
    Object tipoviagem;

    public Object tipodaviagem() {
        tipo = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite 1 para aluguel Economico ou 2 para aluguel Executivo: "));

        if (tipo == 1) {
            tipoviagem = new Economico();
        } else if (tipo == 2) {
            tipoviagem = new Executivo();
        } else {
            System.out.println("Aluguel inválido");
        }
        return tipoviagem;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Viagem getViagem() {
        return viagem;
    }

    public void setViagem(Viagem viagem) {
        this.viagem = viagem;
    }

    public Executivo getExecutivo() {
        return executivo;
    }

    public void setExecutivo(Executivo executivo) {
        this.executivo = executivo;
    }

    public Economico getEconomico() {
        return economico;
    }

    public void setEconomico(Economico economico) {
        this.economico = economico;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public Object getTipoviagem() {
        return tipoviagem;
    }

    public void setTipoviagem(Object tipoviagem) {
        this.tipoviagem = tipoviagem;
    }

}
