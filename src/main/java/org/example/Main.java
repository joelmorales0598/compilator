package org.example;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {
    public static void main(String[] args) {

        try {
            Reader r = new FileReader("prueba.txt");
            AnalizadorLexico a = new AnalizadorLexico(r);
            a.yylex(); // Ejecuta el análisis léxico y genera el TAC

            // Mostrar el código intermedio generado
            System.out.println("\n--- Código Intermedio (Three Address Code - TAC) ---");
            for (String linea : a.getCodigoIntermedio()) {
                System.out.println(linea);
            }

        } catch (FileNotFoundException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
