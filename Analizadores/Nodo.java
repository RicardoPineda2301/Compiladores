/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizadores;

import java.util.ArrayList;

/**
 *
 * @author Ricardo
 */
public class Nodo {
    public String nombre;
    public ArrayList<Nodo> hijos;
    public String valor;
    public int numNodo;
//    public Object padre = getNumNodo();
    
    
    public void addHijo(Nodo hijo){
        hijos.add(hijo);
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    
    public ArrayList<Nodo> getHijos(){
        return hijos;
    }
    
    public void setHijos(ArrayList<Nodo> hijos){
        this.hijos = hijos;
    }
    
    public String getValor(){
        return valor;
    }
    
    public void setValor(String valor){
        this.valor = valor;
    }
    
    public int getNumNodo(){
        return numNodo;
    }
    
    public void setNumNodo(int numNodo){
        this.numNodo = numNodo;
    }
    
    public Nodo(String nombre){
        setNombre(nombre);
        hijos = new ArrayList<>();
        setNumNodo(0);
    }
}
