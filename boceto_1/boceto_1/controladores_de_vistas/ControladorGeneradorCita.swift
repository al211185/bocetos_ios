//
//  Controlador_generador_cita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorGeneradorCita: UIViewController {
    var generadorDeCitas: GeneradorDeCitas?

    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    @IBOutlet weak var que_es_lo_que_dijo: UITextField!

    @IBAction func agregar_cita_nueva(_ sender: UIButton) {
        guard let nombre = quien_lo_dijo_view.text, !nombre.isEmpty,
              let citaTexto = que_es_lo_que_dijo.text, !citaTexto.isEmpty else {
            // Maneja el caso donde los campos están vacíos
            // Podrías mostrar un alerta aquí si lo deseas
            return
        }
        
        let nuevaCita = Cita(quien_lo_dijo: nombre, que_dijo: citaTexto)
        
        // Asegúrate de que generadorDeCitas no sea nil
        generadorDeCitas?.agregar_cita(nuevaCita)
        
        // Opcional: Cierra el controlador o muestra un mensaje
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
