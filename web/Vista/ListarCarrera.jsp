

<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CarreraDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Carrera"%>
<%@page import="Modelo.Carrera"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Carrera</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.html">SIGU</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link" href="ControladorEstudiantes?f_accion=listarestudiante">Estudiantes</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="ControladorCursos?f_accion=listarcurso">Cursos <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item  active">
                     <a class="nav-link" href="ControladorCarrera?f_accion=listarcarrera">Carrera <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Matricula</a>
                    </li>
                  </ul>
                </div>
              </nav>
        <div class="container">
            <h1>Listado de Carrera</h1>
            <a class="btn btn-success" href="ControladorCarrera?f_accion=agregarcarrera01">Agregar Nueva Carrera</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        CarreraDAO carreraDAO = new CarreraDAO();
                        List<Carrera> carreras = carreraDAO.listarcarrera();
                        Iterator<Carrera> iterator = carreras.iterator();
                        Carrera carrera = null;
                        while (iterator.hasNext()) {
                            carrera = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(carrera.getIdcarrera()); %></td>
                        <td><% out.print(carrera.getNombre()); %></td>
                        
                        <td><% out.print(carrera.getEstado()); %></td>
                        <td>
                            <a class="btn btn-warning" href="ControladorCarrera?f_accion=editarcarrera01&f_idcarrera=<% out.print(carrera.getIdcarrera()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="ControladorCarrera?f_accion=eliminarcarrera02&f_idcarrera=<% out.print(carrera.getIdcarrera()); %>">
                                Eliminar
                            </a>
                        </td>
                    </tr>
                    <%    }
                    %>                    
                </tbody>
            </table>
        </div>
    </body>
</html>
