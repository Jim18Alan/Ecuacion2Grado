/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javm.actividad.model.service;
import com.javm.actividad.model.Ecuacion;
/**
 *
 * @author alan7
 */

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class Archivo {
    
    public static void add(Ecuacion ecuacion, String ruta) {
        File archivo;
        FileWriter fileWriter;
        PrintWriter printWriter = null;

        try{
            archivo = new File(ruta);
            fileWriter = new FileWriter(archivo,true);
            printWriter = new PrintWriter(fileWriter);
            printWriter.println("[a:" + ecuacion.getA() +",b:" + ecuacion.getB() +",c: "+ ecuacion.getC() + ",x1: " + ecuacion.getX1() + ",x2: " + ecuacion.getX2()+"]" );
        }catch (IOException ex){
            System.out.println(ex.getMessage());
        }finally {
            try
            {
                if (printWriter!= null){
                    printWriter.close();
                }
            }catch (Exception ex){
                System.out.println(ex.getMessage());
            }
        }
    }
}
