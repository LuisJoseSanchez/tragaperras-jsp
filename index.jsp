<%-- 
    Document   : index
    Created on : 19-abr-2017, 9:59:02
    Author     : luisjose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tragaperras</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
  </head>
  <body>
    <div class="contenedor">
      <h1>Tragaperras</h1>
    </div>
    
    <div class="contenedor">
    <%
      // Figuras ///////////////////////////
      
      int numeroFigura = 0;
      int numeroFigura1 = 0;
      int numeroFigura2 = 0;
      int numeroFigura3 = 0;
      String nombreFigura = "";

      for (int i = 0; i < 3; i++) {
        numeroFigura = (int) (Math.random() * 5);
        switch (i) {
          case 0:
            numeroFigura1 = numeroFigura;
            break;
          case 1:
            numeroFigura2 = numeroFigura;
            break;
          case 2:
            numeroFigura3 = numeroFigura;
            break;
        }

        switch (numeroFigura) {
          case 0:
            nombreFigura = "corazón";
            break;
          case 1:
            nombreFigura = "diamante";
            break;
          case 2:
            nombreFigura = "herradura";
            break;
          case 3:
            nombreFigura = "campana";
            break;
          case 4:
            nombreFigura = "limón";
            break;
          default:
        } // switch

        out.print("<img height=\"150px\" src=\"" + nombreFigura + ".png\"> &nbsp;");
      }
     %>
    </div>
    
    
    <div class="contenedor">
      <h2>
      <%

        // Premio ////////////////////////////

        if ((numeroFigura1 != numeroFigura2) && (numeroFigura2 != numeroFigura3) && (numeroFigura1 != numeroFigura3)) {
          out.println("<p>Lo siento, ha perdido.</p>");
        } else if ((numeroFigura1 == numeroFigura2) && (numeroFigura2 == numeroFigura3)) {
          out.println("<p>Enhorabuena, ha ganado 10 monedas.</p>");
        } else {
          out.println("<p>Bien, ha recuperado su moneda.</p>");
        }
      %>
      </h2>
    </div>
  </body>
</html>
