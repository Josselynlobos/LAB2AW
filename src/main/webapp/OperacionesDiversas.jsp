<%@page import="com.miempresa.funciones.OperacionesDiversas"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado de Operaciones Diversas</title>
    <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
</head>
<body>
<%
    // Recibe los valores enviados desde el formulario HTML
    double numero1 = Double.parseDouble(request.getParameter("xusu"));
    double numero2 = 0; // Inicializamos a 0 por defecto

    String[] opciones = request.getParameterValues("opcion");
    
    // Verificar si la opción "calcular potencia" está seleccionada
    boolean calcularPotencia = false;
    if (opciones != null) {
        for (String opcion : opciones) {
            if (opcion.equals("calcular potencia")) {
                calcularPotencia = true;
                numero2 = Double.parseDouble(request.getParameter("xpas"));
                break;
            }
        }
    }

    // Crea una instancia de OperacionesDiversas
    OperacionesDiversas obj = new OperacionesDiversas();

    // Realiza las operaciones según las opciones seleccionadas
    double resultado = 0;

    if (opciones != null) {
        for (String opcion : opciones) {
            switch (opcion) {
                case "raiz cuadrada":
                    resultado = obj.cuadrada(numero1);
                    break;
                case "raiz cubica":
                    resultado = obj.cubica(numero1);
                    break;
                case "calcular potencia":
                    if (calcularPotencia) {
                        resultado = obj.calcularPotencia(numero1, numero2);
                    }
                    break;
                case "calcular factorial":
                    resultado = obj.factorial((int) numero1);
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
       if (calcularPotencia) {
           out.print("<br>Segundo número: " + xpas);
       }
       out.print("<br>El resultado es: " + resultado);
    %>
    </div> 
    <div class="alert alert-dark" role="alert">
        <a class="btn btn-primary" href="envio2.html" role="button">Volver a enviar datos</a>
    </div>
</div> 

</body>
</html>

