<%-- 
    Document   : EditarCurso
    Created on : 16/08/2020, 11:16:32 PM
    Author     : jeferson
--%>

<%@page import="Modelo.Curso"%>
<%@page import="ModeloDAO.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Curso</title>
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
                    <li class="nav-item">
                      <a class="nav-link" href="#">Carreras</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Matricula</a>
                    </li>
                  </ul>
                </div>
              </nav>
        <div class="container">
            <%
                CursoDAO cursoDAO = new CursoDAO();
                int s_idcurso = Integer.valueOf(request.getParameter("f_idcurso"));
                Curso curso = (Curso)cursoDAO.buscarcurso(s_idcurso);
            %>
            <form name="EditarCursoForm" action="ControladorCursos" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Curso</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(curso.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Horas</td>
                            <td><input class="form-control" type="text" name="f_horas" value="<% out.println(curso.getHoras()); %>" maxlength="2" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Creditos</td>
                            <td><input class="form-control" type="text" name="f_creditos" value="<% out.println(curso.getCreditos()); %>" maxlength="2" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(curso.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-primary" type="submit" value="Editar Curso" name="editar" />
                                <input type="hidden" value="editarcurso02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(curso.getIdcurso()); %>" name="f_idcurso">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
