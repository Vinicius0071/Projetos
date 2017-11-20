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
public class Viagem extends Cliente {

    protected String origem;
    protected String destino;
    protected Cliente cliente;
    protected Veiculo veiculo;

    @Override
    public String toString() {
        return "Viagem{" + "origem=" + origem + ", destino=" + destino + '}';
    }

    public Viagem(String origem, String destino, Cliente cliente, Veiculo veiculo) {
        this.origem = origem;
        this.destino = destino;
        this.cliente = cliente;
        this.veiculo = veiculo;
    }

    public Viagem() {
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Veiculo getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

}
