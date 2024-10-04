//
//  Controlador_generador_cita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorGeneradorCita: UIViewController {
    var cita_creada: Cita? = nil
    
    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    @IBOutlet weak var que_es_lo_que_dijo: UITextField!

    @IBAction func agregar_cita_nueva(_ sender: UIButton) {
        guard let nombre = quien_lo_dijo_view.text, !nombre.isEmpty,
              let citaTexto = que_es_lo_que_dijo.text, !citaTexto.isEmpty else {
            mostrarAlertaCamposVacios()
            return
        }
        
        // Crear la nueva cita y agregarla al generador
        print("---------")
        cita_creada = Cita(quien_lo_dijo: nombre, que_dijo: citaTexto)
       
        // Regresa a la pantalla anterior después de agregar la cita
        // dismiss(animated: true, completion: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        configurarPlaceholders()
    }

    func configurarPlaceholders() {
        quien_lo_dijo_view.placeholder = "Nombre"
        que_es_lo_que_dijo.placeholder = "¿Qué es lo que dijo?"
    }
    
    func mostrarAlertaCamposVacios() {
        let alerta = UIAlertController(title: "Campos Vacíos", message: "Por favor, rellena ambos campos antes de agregar una cita.", preferredStyle: .alert)
        let accionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(accionOK)
        present(alerta, animated: true, completion: nil)
    }
}








