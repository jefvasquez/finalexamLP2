package Modelo;

public class Matricula {
    private int idmatricula;
    private String nombre;
    private String apellidos;
    private String dni;
    private String codigo;
    private String direccion;

    private String estado;

    public Matricula() {
    }

    public Matricula(int idmatricula, String nombre, String apellidos, String dni, String codigo, String estado) {
        this.idmatricula = idmatricula;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.dni = dni;
        this.codigo = codigo;
        this.estado = estado;
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

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
    
    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    
    
    
}
