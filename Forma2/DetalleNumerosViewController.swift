//
//  DetalleNumerosViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class DetalleNumerosViewController: UIViewController {

    @IBOutlet weak var lblCodigo: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    var cod = 0
    var nom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCodigo.text = "Codigo:  " + String(cod)
        lblNombre.text = "Nombre:  " + nom
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
