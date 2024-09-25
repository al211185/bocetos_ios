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
    
    var cita_actual=Cita(quien_lo_dijo: "Desarrollador", que_dijo: "Help")

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("Algo paso por aqui")
    }
    
    init?(cita_para_citar: Cita ,coder: NSCoder){
        self.cita_actual = cita_para_citar
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        inicializar_pantalla()
    }
    
    
    func inicializar_pantalla (){
        nombre_de_quien_lo_dijo.text=cita_actual.nombre
        que_dijo_muro_texto.text=cita_actual.texto
    }


}
