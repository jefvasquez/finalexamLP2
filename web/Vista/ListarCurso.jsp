<%-- 
    Document   : ListarCurso
    Created on : 16/08/2020, 11:15:32 PM
    Author     : jeferson
--%>

<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CursoDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Curso"%>
<%@page import="Modelo.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Curso</title>
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
                     <a class="nav-link" href="ControladorCarrera?f_accion=listarcarrera">Carrera<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Matricula</a>
                    </li>
                  </ul>
                </div>
              </nav>
        <div class="container">
            <h1>Listado de Cursos</h1>
            <a class="btn btn-success" href="ControladorCursos?f_accion=agregarcurso01">Agregar Nuevo Curso</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Horas</th>
                        <th class="text-center">Creditos</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        CursoDAO cursoDAO = new CursoDAO();
                        List<Curso> cursos = cursoDAO.listarcurso();
                        Iterator<Curso> iterator = cursos.iterator();
                        Curso curso = null;
                        while (iterator.hasNext()) {
                            curso = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(curso.getIdcurso()); %></td>
                        <td><% out.print(curso.getNombre()); %></td>
                        <td><% out.print(curso.getHoras()); %></td>
                        <td><% out.print(curso.getCreditos()); %></td>
                        <td><% out.print(curso.getEstado()); %></td>
                        <td>
                            <a class="btn btn-warning" href="ControladorCursos?f_accion=editarcurso01&f_idcurso=<% out.print(curso.getIdcurso()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="ControladorCursos?f_accion=eliminarcurso&f_idcurso=<% out.print(curso.getIdcurso()); %>">
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
