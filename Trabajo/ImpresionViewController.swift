//
//  ImpresionViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class ImpresionViewController: UIViewController {
    
    @IBOutlet weak var lblDni: UILabel!
    @IBOutlet weak var lblNombreCompleto: UILabel!
    @IBOutlet weak var lblServicio: UILabel!
    @IBOutlet weak var lblCostoServicio: UILabel!
    @IBOutlet weak var lblCostoInstalacion: UILabel!
    @IBOutlet weak var lblDescuento: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    //VARIABLES GLOBALES
    var dni:Int = 0
    var nom:String = ""
    var bser:String = ""
    var ser:Double = 0.0
    var ins:Double = 0.0
    var des:Double = 0.0
    var tot:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDni.text = "DNI:  " + String(dni)
        lblNombreCompleto.text = "Nombre:  " + nom
        lblServicio.text = "Servicio:  " + bser
        lblCostoServicio.text = "Costo del Servicio:  " + String(ser)
        lblCostoInstalacion.text = "Costo de Instalacion:  " + String(ins)
        lblDescuento.text = "Descuento:  " + String(des)
        lblTotal.text = "Total:  " + String(tot)
    }


}
