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
public class TipoViagem extends Viagem {

    protected String tipo;
    protected float valorkm;

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public float getValorkm() {
        return valorkm;
    }

    public void setValorkm(float valorkm) {
        this.valorkm = valorkm;
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
    public String toString() {
        return "TipoViagem{" + "tipo=" + tipo + ", valorkm=" + valorkm + '}';
    }

    public TipoViagem() {
    }

}
