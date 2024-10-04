//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {

    var citas_disponibles = GeneradorDeCitas()
    
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualizar_cantidad()
    }
    
    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }

    @IBSegueAction func al_abrir_pantalla_cita(_ coder: NSCoder) -> ControladorPantallaCitas? {
        // Inicia la pantalla de citas sin pasarle una cita
        return ControladorPantallaCitas(cita_actual: citas_disponibles.obtener_cita_aleatoria()!, coder: coder)
    }


    @IBAction func volver_a_pantalla_de_inicio(segue: UIStoryboardSegue) {
        
        if let pantalla_agregar_cita = segue.source as? ControladorGeneradorCita{
            if pantalla_agregar_cita.cita_creada != nil{        citas_disponibles.agregar_cita(pantalla_agregar_cita.cita_creada!)}

        }
        // Simplemente actualiza la cantidad de citas cuando regreses
        actualizar_cantidad()
    }


}



