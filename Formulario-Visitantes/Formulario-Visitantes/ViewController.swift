//
//  ViewController.swift
//  Formulario-Visitantes
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var btnCapturar: UIButton!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    @IBOutlet weak var sldTemperatura: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturar.isEnabled = true
        sldTemperatura.isEnabled = true
        
    }

    @IBAction func doChangeTemperatura(_ sender: Any) {
        lblTemperatura.text = "\(String(format: "%.1f", sldTemperatura.value))°C"
        if sldTemperatura.value >= 38.0 {
            lblTemperatura.textColor = UIColor.red
        }else{
            lblTemperatura.textColor = UIColor.black
        }
    }
    
    @IBAction func doTapCapturar(_ sender: Any) {
        if sldTemperatura.value >= 38.0 {
            imgResultado.image = UIImage(named: "wrong")
            lblResultado.text = "Ingreso NO autorizado para \(txtNombre.text!)"
        }else{
            imgResultado.image = UIImage(named: "check")
            lblResultado.text = "Ingreso autorizado para \(txtNombre.text!)"
        }
        imgResultado.isHidden = false
        lblResultado.isHidden = false
        btnNuevo.isHidden = false
        btnCapturar.isEnabled = false
        sldTemperatura.isEnabled = false
        sldTemperatura.tintColor = UIColor.gray
    }
    
    @IBAction func doTapNuevo(_ sender: Any) {
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturar.isEnabled = true
        sldTemperatura.isEnabled = true
        
    }
    
    
    
}

