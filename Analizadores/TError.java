/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizadores;

public class TError {
    String lexema, tipo, descripcion;
    int linea, columna;
    
    public TError(String le, int li, int co, String t, String de){
    
        lexema = le;
        linea = li;
        columna = co;
        tipo = t;
        descripcion = de;
        
    }

    TError(String lexema, double fila, double columna, String error_Sintactico, String caracter_no_esperado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
