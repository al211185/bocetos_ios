//
//  ControladorCita.swift
//  boceto_1
//
//  Created by alumno on 9/20/24.
//

import UIKit

class ControladorVistaCita: UIViewController {

    @IBOutlet weak var quien: UILabel!
    
    @IBOutlet weak var como: UILabel!
    
    var texto: String
    
    required init?(coder: NSCoder) {

        self.texto=""
        print("guatefoc")
        
        super.init(coder: coder)
    }
    
    init(titulo_secundario: String, coder: NSCoder){

        self.texto=titulo_secundario
        
        super.init(coder: coder)!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Me estoy ejecutando")
        // Do any additional setup after loading the view.
        
        quien.text=self.texto
    }


}
