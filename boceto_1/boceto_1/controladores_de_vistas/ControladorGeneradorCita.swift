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
            mostrarAlertaCamposVacios()
            return
        }
        
        let nuevaCita = Cita(quien_lo_dijo: nombre, que_dijo: citaTexto)
        generadorDeCitas?.agregar_cita(nuevaCita) // Agrega la nueva cita
        
        // Presenta la pantalla que muestra todas las citas
        if let controladorPantallaCitas = storyboard?.instantiateViewController(withIdentifier: "ControladorPantallaCitas") as? ControladorPantallaCitas {
            controladorPantallaCitas.generadorDeCitas = generadorDeCitas // Pasa la referencia al generador de citas
            present(controladorPantallaCitas, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        generadorDeCitas = GeneradorDeCitas() // Asegúrate de inicializar el generador de citas
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







