//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {

    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Jennie", que_dijo: "cunt")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()
    var numero_aleatorio: Int = Int.random(in: 0...25)
    
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        actualizar_cantidad()
        
    }
    
    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }
    

    @IBSegueAction func al_abrir_pantalla_cita(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
    
    @IBAction func al_pulsar_boton(_ sender: UIButton){
        
    }
    
    @IBAction func volver_a_pantalla_de_inicio(segue: UIStoryboardSegue){
        if let pantalla_agregar_citas = segue.source as? ControladorPantallaCitas{
            citas_disponibles.agregar_cita(<#T##que_dijo: String##String#>, quien_lo_dijo: <#T##String#>)
            
        }
        
        actualizar_cantidad()
       /* print(pantalla_citas?.cita_actual.texto)
        
        if let pantalla_citas = segue.source as? ControladorPantallaCitas{
            citas_disponibles.agregar_cita(pantalla_citas.cita_actual.texto, quien_lo_dijo: pantalla_citas.cita_actual.nombre)
        }
        else{
            print("<Eso no era un objeto de tipo pantalla controlador citas>")
        }
        */
    }
}

