<%-- 
    Document   : editar
    Created on : 16-04-2020, 13:13:25
    Author     : kevin
--%>

<%@page import="root.model.entities.Phone"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Phone ps = (Phone) request.getAttribute("phone");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
        <link href="styles.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="alert.js"></script>
        <title>EDITAR</title>
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
        
                <div class="box">
                    <h2>EDITAR</h2>
                    
                    <form action="controllerUsuario" method="POST" onsubmit="return edit()">
                        
                            <div class="inputBox">
                                <input type="text" step="any" name="imei" value="<%=ps.getImeiCode()%>" required=""/>
                                <label>Imei</label>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="marca" value="<%=ps.getMarca()%>" required=""/>
                                <label>Marca</label>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="modelo" value="<%=ps.getModelo()%>" required=""/>
                                <label>Modelo</label>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="os" value="<%=ps.getOSystem()%>" required=""/>
                                <label>Sistema Operativo</label>
                            </div>
                            <div class="inputBox">
                                <input type="number" min="2000" max="2020" name="year" value="<%=ps.getYear()%>" required=""/>
                                <label>Año de Lanzamiento</label>
                            </div>
                            <button class="button is-success" type="submit" name="accion" value="grabarEditar">
                                    <span class="icon is-small">
                                      <i class="fas fa-check"></i>
                                    </span>
                                    <span>Guardar</span>
                            </button>
                            <button class="button is-danger"><a href="index.jsp">Salir</a></button>
                    </form>
              </div>   
            </article>

            
    </body>
</html>
