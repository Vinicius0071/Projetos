/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.dao;

import Model.Cliente;
import Model.Viagem;
import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Vinícius
 */
public class ViagemDAO {

    public void create(Viagem v) throws SQLException {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO corridaandamento (Nome_Cliente, Origem, Destino)VALUES(?,?,?)");
            stmt.setString(1, v.getNomeCliente());
            stmt.setString(2, v.getOrigem());
            stmt.setString(3, v.getDestino());
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Salvo com sucesso!");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Erro ao salvar!" + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }

    

    public List<Viagem> read() throws SQLException {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<Viagem> viagens = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT  IDCorridaAndamento, Nome_Cliente, origem, destino FROM corridaandamento ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Viagem viagem = new Viagem();
                viagem.setIDViagem(rs.getInt("IDCorridaAndamento"));
                viagem.setNomeCliente(rs.getString("Nome_Cliente"));
                viagem.setOrigem(rs.getString("origem"));
                viagem.setDestino(rs.getString("destino"));
                viagens.add(viagem);
            }

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Erro ao buscar! " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return viagens;

    }

    public void update(Viagem v) throws SQLException {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("UPDATE corridaandamento SET Nome_Cliente = ? ,origem = ?, Destino = ? WHERE IDCorridaAndamento = ?");
            stmt.setString(1, v.getNomeCliente());
            stmt.setString(2, v.getOrigem());
            stmt.setString(3, v.getDestino());
            stmt.setInt(4, v.getIDViagem());
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atualizar!" + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }

    public void delete(Viagem v) throws SQLException {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM corridaandamento WHERE IDCorridaAndamento = ?");
            stmt.setInt(1, v.getIDViagem());
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Excluido com sucesso!");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir!" + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
}
