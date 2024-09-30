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
    
    var cita_actual: Cita?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("Algo paso por aqui")
    }
    
    // Este es el inicializador que usas para pasar la cita
    init?(cita_para_citar: Cita, coder: NSCoder) {
        self.cita_actual = cita_para_citar
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Inicializa la pantalla solo si hay una cita
        inicializar_pantalla()
    }
    
    func crearCita(nombre: String, texto: String) {
        cita_actual = Cita(quien_lo_dijo: nombre, que_dijo: texto)
    }
    
    func inicializar_pantalla() {
        // Asegúrate de que cita_actual no sea nil
        guard let cita = cita_actual else {
            return
        }
        
        // Actualiza los labels con la información de la cita
        nombre_de_quien_lo_dijo.text = cita_actual?.nombre
        que_dijo_muro_texto.text = cita_actual?.texto
    }
}



