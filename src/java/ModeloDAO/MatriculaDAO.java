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
                matricula.setSemestre(rs.getString("semestre"));
                matricula.setCiclo(rs.getString("ciclo"));
                matricula.setEstado(rs.getString("estado"));
                matricula.setIdestudiante(rs.getInt("idestudiante"));
                matricula.setIdcurso(rs.getInt("idcurso"));
                matricula.setIdcarrera(rs.getInt("idcarrera"));
                matriculas.add(matricula);
            }
        } catch (Exception e) {
            
        }
        return matriculas;
    }

    @Override
    public Matricula buscarmatricula(int idmatricula) {
        String consulta = " select *  "
                        + " from matricula "
                + "inner join estudiante on matricula.idestudiante = estudiante.idestudiante and "+
                " inner join curso on matricula.idcurso = curso.idcurso and "
                //+ "inner join carrera on matricula.idcarrera = carrera.idcarrera"
                        + " where idmatricula = " + idmatricula + " ;";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                e.setIdmatricula(rs.getInt("idmatricula"));
                e.setSemestre(rs.getString("semestre"));
                e.setCiclo(rs.getString("ciclo"));
                e.setEstado(rs.getString("estado"));
                e.setIdestudiante(rs.getInt("idestudiante"));
                e.setIdcurso(rs.getInt("idcurso"));
                e.setIdcarrera(rs.getInt("idcarrera"));
                
            }
        } catch (Exception e) {
        }
        
        return e;
    }

    @Override
    public boolean agregarmatricula(Matricula matricula) {
        String consulta = " insert into matricula(semestre, ciclo, estado, idestudiante, idcurso, idcarrera)  "
                        + " values( "
                        + "'"+ matricula.getSemestre() +"', "
                        + "'"+ matricula.getCiclo() +"', "
                        + "'"+ matricula.getEstado() +"', "
                        + "'"+ matricula.getIdestudiante() +"', "
                        + "'"+ matricula.getIdcurso() +"', "
                        + "'"+ matricula.getIdcarrera() +"') ";
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
                        + " matricula = '"+ matricula.getSemestre() +"', "
                        + " ciclo = '"+ matricula.getCiclo() +"', "
                        + " estado = '"+ matricula.getEstado() +"', "
                        + " idestudiante = '"+ matricula.getIdestudiante() +"', "
                        + " idcurso = '"+ matricula.getIdcurso() +"' "
                        + " idcarrera = '"+ matricula.getIdcarrera() +"' "
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
