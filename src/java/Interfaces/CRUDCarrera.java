package Interfaces;

import Modelo.Carrera;

import java.util.List;


public interface CRUDCarrera {
    public List listarcarrera(); // listar
    public Carrera buscarcarrera(int idcarrera); // buscar
    public boolean agregarcarrera(Carrera carrera); // agregar
    public boolean editarcarrera(Carrera carrera); // editar
    public boolean eliminarcarrera(int idcarrera); // eliminar
}
