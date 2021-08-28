<%-- 
    Document   : error
    Created on : 20-04-2020, 8:30:09
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
          <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.4.1/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.4.1/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.4.1/dist/js/uikit-icons.min.js"></script>
        
        <link href="styles.css" rel="stylesheet" type="text/css">
        
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
            <p style="margin-top: 0px" class="panel-heading">
              Air-Phone
            </p>
                <div style="margin-top: 2px; font-family: serif" class="box">
                    <h2>Agregar Equipo</h2>
                    <form action="controllerUsuario" method="POST">
                            <div class="uk-alert-danger" uk-alert>
                                    <a class="uk-alert-close" uk-close></a>
                                    <p>Error, el código IME ya existe!</p>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="imei" required=""/>
                                <label>Imei</label>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="marca" required=""/>
                                <label>Marca</label>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="modelo" required=""/>
                                <label>Modelo</label>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="os" required=""/>
                                <label>Sistema Operativo</label>
                            </div>
                            <div class="inputBox">
                                <input type="number" min="2000" max="2020" name="year" required=""/>
                                <label>Año de Lanzamiento</label>
                            </div>
                         
                    <button id="save" type="submit" name="accion" value="grabarCrear">Agregar</button>
                    <button class="button is-danger"><a href="index.jsp">Salir</a></button>
                    </form>
              </div>   
            </article>
    </body>
</html>
