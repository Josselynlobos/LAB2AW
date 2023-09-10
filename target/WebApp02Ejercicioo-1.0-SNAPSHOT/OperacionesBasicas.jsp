<%@page import="com.miempresa.funciones.OperacionesBasicas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>

<body>
<%
    // Recibe los valores enviados desde el formulario HTML
    int numero1 = Integer.parseInt(request.getParameter("xusu"));
    int numero2 = Integer.parseInt(request.getParameter("xpas"));
    String[] opciones = request.getParameterValues("opcion");

    // Crea una instancia de OperacionesBasicas
    OperacionesBasicas obj = new OperacionesBasicas();

    // Realiza las operaciones según las opciones seleccionadas
    double resultado = 0;

    if (opciones != null) {
        for (String opcion : opciones) {
            switch (opcion) {
                case "sumar":
                    resultado += obj.sumar(numero1, numero2);
                    break;
                case "restar":
                    resultado += obj.restar(numero1, numero2);
                    break;
                case "multiplicar":
                    resultado += obj.multiplicar(numero1, numero2);
                    break;
                case "dividir":
                    resultado += obj.dividir(numero1, numero2);
                    break;
            }
        }
    }
%>
<div class="container mt-5">
    <div class="alert alert-primary" role="alert">
        RESULTADOS
    </div>
    <div class="alert alert-primary" role="alert">
    <%
       String xusu = request.getParameter("xusu");
       String xpas = request.getParameter("xpas");
       out.print("Primer número: " + xusu);
       out.print("<br>");
       out.print("Segundo número: "  + xpas);
       out.print("<br>");
       out.print("El resultado es: " + resultado);
    %>
    </div> 
    <div class="alert alert-dark" role="alert">
        <a class="btn btn-primary" href="envio.html" role="button">Volver a enviar datos</a>
    </div>
</div> 

</body>
</html>
