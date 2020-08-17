package Modelo;

/**
 *
 * @author Usuario
 */
public class Carrera {
    private int idcarrera;
    private String nombre;
    private String estado;

   

    public Carrera(int idcarrera, String nombre, String estado) {
        this.idcarrera = idcarrera;
        this.nombre = nombre;
        this.estado = estado;
    }
    
     public Carrera() {
    }
     public int getIdcarrera() {
        return idcarrera;
    }
  
    public void setIdcarrera(int idcarrera) {
        this.idcarrera = idcarrera;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void add(Carrera carrera) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  
   

    
  
}

 
    