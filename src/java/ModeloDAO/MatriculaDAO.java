package ModeloDAO;

import Config.bd.ConectaBd;
import Interfaces.CRUDMatricula;
import Modelo.Matricula;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MatriculaDAO implements CRUDMatricula{
    ConectaBd cn = new ConectaBd();
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Matricula e = new Matricula();

    @Override
    public List listarmatricula() {
        ArrayList<Matricula> matriculas = new ArrayList<>();
        String consulta = " select * "
                        + "from matricula ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                Matricula matricula = new Matricula();
                matricula.setIdmatricula(rs.getInt("idmatricula"));
                matricula.setNombre(rs.getString("nombre"));
                matricula.setApellidos(rs.getString("apellidos"));
                matricula.setDni(rs.getString("dni"));
                matricula.setCodigo(rs.getString("codigo"));
                matricula.setEstado(rs.getString("estado"));
                matriculas.add(matricula);
            }
        } catch (Exception e) {
            
        }
        return matriculas;
    }

    @Override
    public Matricula buscarmatricula(int idmatricula) {
        String consulta = " select *  "
                        + " from matricula  "
                        + " where idmatricula = " + idmatricula + " ;";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                e.setIdmatricula(rs.getInt("idmatricula"));
                e.setNombre(rs.getString("nombre"));
                e.setApellidos(rs.getString("apellidos"));
                e.setDni(rs.getString("dni"));
                e.setCodigo(rs.getString("codigo"));
                e.setEstado(rs.getString("estado"));
            }
        } catch (Exception e) {
        }
        
        return e;
    }

    @Override
    public boolean agregarmatricula(Matricula matricula) {
        String consulta = " insert into matricula(nombre, apellidos, dni, codigo, estado)  "
                        + " values( "
                        + "'"+ matricula.getNombre() +"', "
                        + "'"+ matricula.getApellidos() +"', "
                        + "'"+ matricula.getDni() +"', "
                        + "'"+ matricula.getCodigo() +"', "
                        + "'"+ matricula.getEstado() +"') ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean editarmatricula(Matricula matricula) {
        String consulta = " update matricula "
                        + " set "
                        + " nombre = '"+ matricula.getNombre() +"', "
                        + " apellidos = '"+ matricula.getApellidos() +"', "
                        + " dni = '"+ matricula.getDni() +"', "
                        + " codigo = '"+ matricula.getCodigo() +"', "
                        + " estado = '"+ matricula.getEstado() +"' "
                        + " where "
                        + " idmatricula = " + matricula.getIdmatricula() + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminarmatricula(int idmatricula) {
        String consulta = " delete from matricula "
                        + " where "
                        + " idmatricula = " + idmatricula + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
