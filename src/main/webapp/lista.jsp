<%-- 
    Document   : lista
    Created on : 16-04-2020, 11:30:48
    Author     : kevin
--%>

<%@page import="java.util.Iterator"%>
<%@page import="root.model.entities.Phone"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Phone> ph1 = (List<Phone>) request.getAttribute("ph1");
    Iterator<Phone> cel = ph1.iterator();
%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0" http-equiv="Content-Type" charset=UTF-8">
        <title>REGISTRO</title>
    </head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.4.1/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.4.1/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.4.1/dist/js/uikit-icons.min.js"></script>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
        
        <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="animate.css">
        
        <style>
             body{
                background-color: #cccccc;
            }
            
             @font-face {
                font-family: azonix;
                src: url("./font/Azonix.otf");
                }
                .panel-heading{
                    font-family: azonix;
                }
            
            .shadow{
                transition: 0.5s;
            }
            .shadow:hover{
                background-color: #363636;
                color: white;
                cursor: pointer;
            }
            
            .panel.is-link .panel-heading{
                background-color: #363636;
            }
            .button is-link is-outlined{
                margin: 20px -408px;
            }
            
            .btn1{
            background-color: #0099ff;
            border: none;
            color: white;
            padding: 14px 10px;
            text-align: center;
            font-size: 16px;
            margin: 12px 12px;
            transition: 0.3s;
            cursor: pointer;
            border-radius: 50px;
            text-decoration: none;
            position: relative;
            bottom: 839px;
          }
            
          .btnall{
            position: relative;
            left: 210px;
            top: -488px;
          }
          
          .table{
               width: 75%;
               border-radius: 20px;
               margin: 25px 155px;
               transition: 0.8s;
          }
          
          .table:hover{
              border-radius: 0px;
          }
          
          .uk-radio{
              margin: 0px 3px;
          }
          
          .landing {
                height: 414px;
                padding-left: 0em;
                padding-top: 0em;
            }
            
            .btnadd moved{
                position: relative;
                left: 21px;
                top: -457px;
            }
        </style>
    </head>
    <body>
        <article class="panel is-link">
                <i class="fab fa-phoenix-framework" style="
                    position: absolute;
                    left: 137px;
                    color: white;
                    height: 56px;
                    margin: 0px auto;
                    width: 68px;"
                    ></i>
            <p class="panel-heading">
              Air-Phone
            </p>
        </article>
    <form name="form" action="controllerListado" method="POST">
        <div class="landing">
            <div class="landingGroup animated slideInLeft">
                    <table class="table table-dark">
                          <thead>
                            <tr>
                              <th scope="col">#</th>  
                              <th scope="col">IMEI</th>
                              <th scope="col">Marca</th>
                              <th scope="col">Modelo</th>
                              <th scope="col">Sistema Operativo</th>
                              <th scope="col">Año de Lanzamiento</th>
                            </tr>
                          </thead>
                          <tbody>
                              <%
                                int cont = 1;
                                  for(int i = 1; i <= ph1.size(); i++){
                                while(cel.hasNext()){
                                  Phone phon = cel.next();
                              %>
                            <tr name="this" class="shadow">
                                <td><input class="uk-radio" type="radio" name="seleccion" value="<%=phon.getImeiCode()%>" required=""><%=cont++%></td>
                                <td><%=phon.getImeiCode()%></td>
                                <td><%=phon.getMarca()%></td>
                                <td><%=phon.getModelo()%></td>
                                <td><%=phon.getOSystem()%></td>
                                <td><%=phon.getYear()%></td>
                            </tr>
                            <%}
                            }%>
                          </tbody>
                    </table>
            </div>
        </div>
              <div class="btnall">
               
              <button class="button is-primary is-focused" type="submit" name="accion" value="Editar">Editar</button>
              <button class="button is-danger is-outlined" type="submit" name="accion" value="Eliminar">
                <span>Eliminar</span>
                <span class="icon is-small">
                  <i class="fas fa-times"></i>
                </span>
              </button>
              </div>
    </form>
                <div class="landing">
                    <div class="landingGroup animated slideInLeft">
                        <form name="form" action="agregarListado" method="POST" style="position: relative;
                            left: 21px;
                            top: -457px;">
                            <button class="button is-link is-rounded" type="submit" name="accion" value="Agregar">Agregar</button>
                        </form>
                    </div>
                </div>
                
            <div class="landing">
                <div class="landingGroup animated slideInLeft">        
                    <a href="index.jsp"><button class="btn1">Volver a Inicio</button></a>
                </div>
            </div>
                          
              <fotter style="margin: 0px 0px 0px 505px;
                color: black">Air-Phone Save IME. All Rights Reserved</fotter>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </body>
</html>
