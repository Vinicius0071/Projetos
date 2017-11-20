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
public class Executivo extends TipoViagem {

    protected Veiculo veiculo;
    protected Cliente cliente;
    protected float valor = 1.20f;

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    @Override
    public Veiculo getVeiculo() {
        return veiculo;
    }

    @Override
    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

    @Override
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Executivo() {
    }

    @Override
    public String toString() {
        return "Executivo{" + "veiculo=" + veiculo + ", cliente=" + cliente + '}';
    }

}
