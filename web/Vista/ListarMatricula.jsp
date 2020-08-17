<%-- 
    Document   : ListarEstudiante
    Created on : 16/08/2020, 10:57:57 PM
    Author     : jeferson
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Estudiantes</title>
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
                    <li class="nav-item active">
                      <a class="nav-link" href="ControladorEstudiantes?f_accion=listarestudiante">Estudiantes <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="ControladorCursos?f_accion=listarcurso">Cursos</a>
                    <li class="nav-item  active">
                     <a class="nav-link" href="ControladorCarrera?f_accion=listarcarrera">Carrera<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="ControladorMatricula?f_accion=listarmatricula">Matricula<span class="sr-only">(current)</span></a>
                    </li>
                    </li>
                  </ul>
                </div>
              </nav>
        <div class="container">
            <h1>Listado de Estudiantes</h1>
            <a class="btn btn-success" href="ControladorEstudiantes?f_accion=agregarestudiante01">Agregar Nueva Matricula</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellidos</th>
                        <th class="text-center">DNI</th>
                        <th class="text-center">Código</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        EstudianteDAO estudianteDAO = new EstudianteDAO();
                        List<Estudiante> estudiantes = estudianteDAO.listarestudiante();
                        Iterator<Estudiante> iterator = estudiantes.iterator();
                        Estudiante estudiante = null;
                        while (iterator.hasNext()) {
                            estudiante = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(estudiante.getIdestudiante()); %></td>
                        <td><% out.print(estudiante.getNombre()); %></td>
                        <td><% out.print(estudiante.getApellidos()); %></td>
                        <td><% out.print(estudiante.getDni()); %></td>
                        <td><% out.print(estudiante.getCodigo()); %></td>
                        <td><% out.print(estudiante.getEstado()); %></td>
                        <td>
                            <a class="btn btn-warning" href="ControladorEstudiantes?f_accion=editarestudiante01&f_idestudiante=<% out.print(estudiante.getIdestudiante()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="ControladorEstudiantes?f_accion=eliminarestudiante&f_idestudiante=<% out.print(estudiante.getIdestudiante()); %>">
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
