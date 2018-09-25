import Analizadores.ASintactico;
import Analizadores.Analizador_Lexico;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;



public class jflexycup {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        
        
        
        //String path="src/Analizadores/A_Lexico.jflex";
        //File file=new File(path);
        //jflex.Main.generate(file);
        
        String opciones[] = new String[7]; 
        
        //Seleccionamos la opción de dirección de destino
        opciones[0] = "-destdir";
        
        //Le damos la dirección, carpeta donde se va a generar el parser.java & el simbolosxxx.java
        opciones[1] = "src/Analizadores";
        
        //Seleccionamos la opción de nombre de archivo simbolos
        opciones[2] = "-symbols"; 
        
        //Le damos el nombre que queremos que tenga
        opciones[3] = "Simbolos";
        
        //Seleccionamos la opcion de clase parser
        opciones[4] = "-parser";         
        
        //Le damos nombre a esa clase del paso anterior
        opciones[5] = "ASintactico"; 
        
        //Le decimos donde se encuentra el archivo .cup 
        opciones[6] = "src/Analizadores/A_Sintactico.cup"; 
        
        
        FileReader texto = new FileReader("/Users/arantxaabad/NetBeansProjects/LabCalcu/src/Analizadores/text.txt");
        BufferedReader reader = new BufferedReader(texto);
        
        //java_cup.Main.main(opciones);

        Analizador_Lexico lexico = new Analizador_Lexico(reader);
        ASintactico sintactico = new ASintactico(lexico);
        
        try {
            
            sintactico.parse();
        } 
        catch (Exception ex){
            System.out.println("Error de Exception: " + ex);
        }
     
        
    }
    
}