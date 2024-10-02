//
//  ControladorPantallaCita.swift
//  boceto_1
//
//  Created by alumno on 9/23/24.
//

import UIKit

class ControladorPantallaCitas: UIViewController {
    
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_muro_texto: UILabel!
    
    var cita_actual: Cita? // Cita que se mostrará en esta pantalla

    init?(cita_para_citar: Cita?, coder: NSCoder) {
        self.cita_actual = cita_para_citar // Inicializa con la cita que se pasa
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inicializar_pantalla() // Solo inicializa la pantalla
    }
    
    func inicializar_pantalla() {
        // Verifica si hay una cita actual
        if let cita = cita_actual {
            // Asigna los valores de la cita a las etiquetas si hay cita
            nombre_de_quien_lo_dijo.text = cita.nombre
            que_dijo_muro_texto.text = cita.texto
        } else {
            // Si no hay cita, mostrar un mensaje de que no hay citas disponibles
            nombre_de_quien_lo_dijo.text = "Sin Cita"
            que_dijo_muro_texto.text = "No hay citas disponibles."
        }
    }
}







