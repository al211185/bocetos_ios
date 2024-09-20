//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBSegueAction func movimiento_de_pantalla(_ coder: NSCoder) -> ControladorVistaCita? {
        return ControladorVistaCita(coder: coder)
    }
}

