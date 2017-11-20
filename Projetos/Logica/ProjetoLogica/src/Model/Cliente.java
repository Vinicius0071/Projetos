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
public class Cliente extends CriarCorrida {

    protected String nomecliente;
    protected String cpf;

    public String getNomeCliente() {
        return nomecliente;
    }

    public void setNomeCliente(String nomecliente) {
        this.nomecliente = nomecliente;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Cliente(String nomecliente, String cpf) {
        this.nomecliente = nomecliente;
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "\nnome=" + nomecliente + ", \ncpf=" + cpf + '}';
    }

    public Cliente() {
    }

}
