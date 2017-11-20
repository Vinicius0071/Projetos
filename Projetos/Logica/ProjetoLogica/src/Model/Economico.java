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
public class Economico extends TipoViagem {

    protected Veiculo veiculo;
    protected Cliente cliente;
    protected float valor = 0.85f;

    @Override
    public Veiculo getVeiculo() {
        return veiculo;
    }

    @Override
    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

    @Override
    public String toString() {
        return "Economico{" + "veiculo=" + veiculo + ", cliente=" + cliente + ", valor=" + valor + '}';
    }

    @Override
    public Cliente getCliente() {
        return cliente;
    }

    @Override
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public Economico() {
    }

}
