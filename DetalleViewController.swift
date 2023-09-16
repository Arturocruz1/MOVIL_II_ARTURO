//
//  DetalleViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var lblCodigo: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    //Variables globales
    var codigo:Int = 0
    var nombre:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        lblCodigo.text = "Código:  " + String(codigo)
        lblNombre.text = "Nombre:  " + nombre
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
