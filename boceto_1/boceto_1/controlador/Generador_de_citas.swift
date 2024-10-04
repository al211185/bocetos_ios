//
//  Generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//


import Foundation

class GeneradorDeCitas {
    var citas_creadas: [Cita]

    init() {
        citas_creadas = []
    }

    // Solo agrega la nueva cita
    func agregar_cita(_ cita_nueva: Cita) {
        citas_creadas.append(cita_nueva)
        print("Cita agregada: \(cita_nueva.nombre) - \(cita_nueva.texto)") // Verifica que se llame
    }

    // Método para obtener todas las citas creadas
    func obtener_citas() -> [Cita] {
        return citas_creadas
    }

    // Método para obtener una cita aleatoria
    func obtener_cita_aleatoria() -> Cita? {
        guard !citas_creadas.isEmpty else { return nil }
        let indiceAleatorio = Int.random(in: 0..<citas_creadas.count)
        return citas_creadas[indiceAleatorio]
    }
}


