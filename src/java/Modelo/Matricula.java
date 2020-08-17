package Modelo;

public class Matricula {
    private int idmatricula;
    private int idestudiante;
    private int idcurso;
    private int idcarrera;

    public int getIdestudiante() {
        return idestudiante;
    }

    public void setIdestudiante(int idestudiante) {
        this.idestudiante = idestudiante;
    }

    public int getIdcurso() {
        return idcurso;
    }

    public void setIdcurso(int idcurso) {
        this.idcurso = idcurso;
    }

    public int getIdcarrera() {
        return idcarrera;
    }

    public void setIdcarrera(int idcarrera) {
        this.idcarrera = idcarrera;
    }
    private String semestre;
    private String estado;
    private String ciclo;

    public String getCiclo() {
        return ciclo;
    }

    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public Matricula() {
    }

    public Matricula(int idmatricula, String semestre, String ciclo, String estado, int idestudiante, int idcurso, int idcarrera) {
        this.idmatricula = idmatricula;
        this.semestre = semestre;
        this.ciclo = ciclo;
        this.estado = estado;
        this.idestudiante = idestudiante;
        this.idcurso = idcurso;
         this.idcarrera = idcarrera;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getIdmatricula() {
        return idmatricula;
    }

    public void setIdmatricula(int idmatricula) {
        this.idmatricula = idmatricula;
    }

   
    
    
    
    
}
