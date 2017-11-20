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
public class CriarCorrida {

    protected int IDViagem;

    public int getIDViagem() {
        return IDViagem;
    }

    public void setIDViagem(int IDViagem) {
        this.IDViagem = IDViagem;
    }

    public CriarCorrida() {
    }

    @Override
    public String toString() {
        return "id=" + IDViagem + '}';
    }

}
