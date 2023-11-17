/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javm.actividad.model;

/**
 *
 * @author alan7
 */
public class Ecuacion {
    double a, b, c;
    String x1,x2;
    
    public Ecuacion(String a, String b, String c){
        
            this.a = Double.parseDouble(a);
            this.b = Double.parseDouble(b) ;
            this.c = Double.parseDouble(c) ;   
        
    }
    
    public double getA(){
        return a;
    }
    public double getB(){
        return b;
    }
    public double getC(){
        return c;
    }
    public String getX1(){
        return x1;
    }
    public String getX2(){
        return x2;
    }
    public void calcular(){
        double discriminante = b * b - 4 * a * c;
        
        double solucion1 = 0.0 ,solucion2 = 0.0;
        if(discriminante >= 0){
            if(b!=0){
                double raiz = Math.sqrt(discriminante);
                solucion1 = (-b + raiz) / (2 * a);
                solucion2 = (-b - raiz) / (2 * a);
            }
            x1 = ""+ solucion1;
            x2 = ""+ solucion2;
        }else{
            double R = -b / (2 * a);
            double I = Math.sqrt(-discriminante) / (2 * a);
            x1 = ""+ R + " + " + I + "i";
            x2 = ""+ R + " - " + I + "i";
            
        }
    }
    
}
