//
//  ViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCodigo: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    //
    var cod = 0
    var nom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetalleViewController
        vc.codigo = cod
        vc.nombre = nom
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        cod = Int(txtCodigo.text ?? "0") ?? 0
        nom = txtNombre.text ?? ""
    }
}

