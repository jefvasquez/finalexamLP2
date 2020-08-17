<%@page import="Modelo.Carrera"%>
<%@page import="ModeloDAO.CarreraDAO"%>
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
                    <li class="nav-item  active">
                       <a class="nav-link" href="ControladorCarrera?f_accion=listarcarrera">Carreras <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="ControladorMatricula?f_accion=listarmatricula">Matricula <span class="sr-only">(current)</span></a>
                    </li>
                  </ul>
                </div>
              </nav>
        <div class="container">
            <%
                CarreraDAO carreraDAO = new CarreraDAO();
                int s_idcarrera = Integer.valueOf(request.getParameter("f_idcarrera"));
                Carrera carrera = (Carrera)carreraDAO.buscarcarrera(s_idcarrera);
            %>
            <form name="EditarCarreraForm" action="ControladorCarrera" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar carrera</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(carrera.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(carrera.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-primary" type="submit" value="Editar carrera" name="editar" />
                                <input type="hidden" value="editarcarrera02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(carrera.getIdcarrera()); %>" name="f_idcarrera">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>