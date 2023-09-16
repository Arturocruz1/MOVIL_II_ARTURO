//
//  CalculoViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class CalculoViewController: UIViewController {

    @IBOutlet weak var txtDni: UITextField!
    @IBOutlet weak var txtNombreCompleto: UITextField!
    @IBOutlet weak var btnTrio: UIButton!
    @IBOutlet weak var btnDuo: UIButton!
    @IBOutlet weak var btnTelefono: UIButton!
    @IBOutlet weak var btnInternet: UIButton!
    @IBOutlet weak var btnCable: UIButton!
    @IBOutlet weak var lblServicios: UILabel!
    @IBOutlet weak var lblInstalacion: UILabel!
    @IBOutlet weak var lblDescuento: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    //VARIABLES GLOBALES
    var dni=0
    var nom=""
    var bser=""
    var ser=0.0
    var ins=0.0
    var desP=0.0
    var des=0.0
    var tot=0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnTrio.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnTrio.setImage(UIImage.init(named: "radio_on"), for: .selected)
        btnDuo.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnDuo.setImage(UIImage.init(named: "radio_on"), for: .selected)
        btnTelefono.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnTelefono.setImage(UIImage.init(named: "radio_on"), for: .selected)
        btnInternet.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnInternet.setImage(UIImage.init(named: "radio_on"), for: .selected)
        btnCable.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnCable.setImage(UIImage.init(named: "radio_on"), for: .selected)
    }

    @IBAction func btnCalcular(_ sender: UIButton) {
        dni = Int(txtDni.text ?? "0") ?? 0
        nom = txtNombreCompleto.text ?? ""
        if btnTrio.isSelected{
            bser = "Trio: Telefono + Internet + Cable"
            ser = 109.00
            ins = 35.00
            desP = 5/100
        }
        else if btnDuo.isSelected{
            bser = "Duo: Telefono + Internet"
            ser = 99.00
            ins = 30.00
            desP = 4/100
        }
        else if btnInternet.isSelected{
            bser = "Solo Internet"
            ser = 89.00
            ins = 15.00
            desP = 2/100
        }
        else if btnTelefono.isSelected{
            bser = "Solo Telefono"
            ser = 59.00
            ins = 12.00
            desP = 1/100
        }
        else{
            bser = "Solo Cable"
            ser = 79.00
            ins = 15.00
            desP = 1/100
        }
        
        des = (ser+ins) * desP
        tot = (ser+ins) - des
        
        lblServicios.text = "Servicios:  " + String(ser)
        lblInstalacion.text = "Instalacion:  " + String(ins)
        lblDescuento.text = "Descuento:  " + String(des)
        lblTotal.text = "Total:  " + String(tot)
    }
    
    @IBAction func btnBotones(_ sender: UIButton) {
        if sender == btnTrio{
            btnTrio.isSelected = true
            btnDuo.isSelected = false
            btnTelefono.isSelected = false
            btnInternet.isSelected = false
            btnCable.isSelected = false
        }
        else if sender == btnDuo{
            btnTrio.isSelected = false
            btnDuo.isSelected = true
            btnTelefono.isSelected = false
            btnInternet.isSelected = false
            btnCable.isSelected = false
        }
        else if sender == btnTelefono{
            btnTrio.isSelected = false
            btnDuo.isSelected = false
            btnTelefono.isSelected = true
            btnInternet.isSelected = false
            btnCable.isSelected = false
        }
        else if sender == btnInternet{
            btnTrio.isSelected = false
            btnDuo.isSelected = false
            btnTelefono.isSelected = false
            btnInternet.isSelected = true
            btnCable.isSelected = false
        }
        else{
            btnTrio.isSelected = false
            btnDuo.isSelected = false
            btnTelefono.isSelected = false
            btnInternet.isSelected = false
            btnCable.isSelected = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ImpresionViewController
        vc.dni = dni
        vc.nom = nom
        vc.bser = bser
        vc.ser = ser
        vc.ins = ins
        vc.des = des
        vc.tot = tot
    }
}
