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
    
    var cita_actual: Cita? // Cita actual que se mostrará

    init?(cita_actual: Cita, coder: NSCoder) {
        self.cita_actual = cita_actual
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        cita_actual = nil
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarCitaAleatoria()
    }

    func mostrarCitaAleatoria() {

        nombre_de_quien_lo_dijo.text = cita_actual?.nombre
        que_dijo_muro_texto.text = cita_actual?.texto
    }
}









