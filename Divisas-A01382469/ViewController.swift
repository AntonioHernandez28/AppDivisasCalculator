//
//  ViewController.swift
//  Divisas-A01382469
//
//  Created by Alumno on 13/02/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDinero: UIImageView!
    @IBOutlet weak var tfTipoCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDolares: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgDinero.image = UIImage(named: "billspng")
    }
    
    @IBAction func btnConvertir(_ sender: UIButton) {
        if let TipoCambio = Double(tfTipoCambio.text!), let pesos = Double(tfPesos.text!) {
            let dolares = pesos / TipoCambio
            tfDolares.text = "\(dolares)"
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Favor de llenar todos los campos", preferredStyle: .alert)
            let accion = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(accion)
            
            present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func quitaTeclado(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

