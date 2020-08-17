<%-- 
    Document   : AgregarEstudiante
    Created on : 10/08/2020, 09:13:57 AM
    Author     : TuNombre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarEstudiante</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">SIGU</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                      <a class="nav-link" href="ControladorEstudiantes?f_accion=listarestudiante">Estudiantes <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Cursos</a>
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
            <form name="AgregarEstudianteForm" action="ControladorEstudiantes" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Agregar Estudiante</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Apellido</td>
                            <td><input class="form-control" type="text" name="f_apellidos" value="" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">DNI</td>
                            <td><input class="form-control" type="text" name="f_dni" value="" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Codigo</td>
                            <td><input class="form-control" type="text" name="f_codigo" value="" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn-primary" type="submit" value="Agregar Estudiante" name="agregar" />
                                <input type="hidden" value="agregarestudiante02" name="f_accion"/>
                                    
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                
            </form>
        </div>
    </body>
</html>
