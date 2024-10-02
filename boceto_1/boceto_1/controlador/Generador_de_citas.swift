//
//  Generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//


import Foundation

class GeneradorDeCitas {
    var citas_creadas: [Cita] // Cambia Array<Cita> a [Cita] por simplicidad

    init() {
        citas_creadas = []
    }

    // Solo agrega la nueva cita
    func agregar_cita(_ cita_nueva: Cita) {
        citas_creadas.append(cita_nueva)
    }

    // Método para obtener todas las citas creadas
    func obtener_citas() -> [Cita] {
        return citas_creadas
    }
}


