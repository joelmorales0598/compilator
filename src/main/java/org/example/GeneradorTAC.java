package org.example;

import java.util.ArrayList;
import java.util.List;

public class GeneradorTAC {
    private int tempCount = 0;
    private List<String> instrucciones = new ArrayList<>();

    public String nuevaTemporal() {
        return "t" + (++tempCount);
    }

    public void agregarInstruccion(String instruccion) {
        instrucciones.add(instruccion);
    }

    public void imprimirCodigoIntermedio() {
        System.out.println("== Código Intermedio ==");
        for (String instr : instrucciones) {
            System.out.println(instr);
        }
    }
}
