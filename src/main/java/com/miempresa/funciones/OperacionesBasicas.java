package com.miempresa.funciones;

public class OperacionesBasicas {
    public int sumar(int a, int b){
        int sumar = a + b;
        return sumar;
    }
    public int restar(int a, int b){
        int restar = a - b;
        return restar;
    }
    public int multiplicar(int a, int b){
        int mult = a * b;
        return mult;
    }
    public double dividir(int a, int b){
        if (b == 0) {
            throw new ArithmeticException("No se puede dividir por cero");
        }
        double dividir = (double) a / b;
        return dividir;
    }
}
