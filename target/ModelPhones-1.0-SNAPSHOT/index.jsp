<%-- 
    Document   : index
    Created on : 16-04-2020, 11:29:27
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1" http-equiv="Content-Type" charset=UTF-8">
        <title>Registro de Equipos</title>
        <script src="image.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
        <style>
            body{
                background-color: #cccccc;
            }
            h2{
                font-family: 'intro';
            }
            
            @font-face {
                font-family: azonix;
                src: url("./font/Azonix.otf");
                }
                .panel-heading{
                    font-family: azonix;
                }
          .post{
                width: 100%;
                height: 400px;
                position: relative;
                cursor: pointer;
            }
            
            .post:hover .post-s{
                width: 100%;
            }
            
            .post img{
                display: block;
                width: 100%;
                height: 400px;
            }
            
            .post-s{
                width: 0px;
                height: 400px;
                background: rgba(103,58,183,0.71);
                position: absolute;
                top: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                overflow: hidden;
                transition: 0.7s ease;
            }
            
            .post-s h2{
                color: white;
                font-size: 50px;
                border: 6px solid white;
                padding: 10px 30px;
            }
            
           .btn{
            background-color: #0099ff;
            border: none;
            color: black;
            padding: 16px 32px;
            text-align: center;
            font-size: 16px;
            margin: 12px 12px;
            transition: 0.3s;
            cursor: pointer;
            border-radius: 50px;
          }
          .btn:hover{
            background-color: #363636;
            color: white;
          }
          
          .is-fullwidth{
            background-color: white;
            transition: 0.3s;
            top: 20px;
          }
          
          .is-fullwidth:hover{
            background-color: #363636;
            color: white;
          }
            .panel.is-link .panel-heading{
                background-color: #363636;
            }
            .container{
                height: 78px;
            }
            
            footer{
                margin: 0px 0px 0px 500px;
                color: black;
            }
            </style>
    </head>
    <body>
        <form name="form" action="controllerListado" method="POST">
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
            <div class="container">
             <button class="button is-fullwidth" type="submit" name="accion" value="Agregar">AGREGAR DISPOSITIVO</button>
            </div>
        </article>
        </form>
            <div class="post">
              <img class="img" src="https://santanderglobaltech.com/wp-content/uploads/2020/01/tendencias-tecnologia-2020-1.jpg">
              <div class="post-s">
                  <h2>IMEI SAVE</h2>
              </div>
            </div>
            <form name="form" action="controller" method="POST">
                <button class="btn" type="submit">Registro de Dispositivos</button>
            </form> 
       
           <fotter style="margin: 0px 0px 0px 500px;
                color: black">Air-Phone Save IME. All Rights Reserved</fotter>
    </body>  
</html>
