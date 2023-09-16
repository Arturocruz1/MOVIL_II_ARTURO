//
//  PruebaViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class PruebaViewController: UIViewController {

    @IBOutlet weak var btnOpcionA: UIButton!
    @IBOutlet weak var btnOpcionB: UIButton!
    @IBOutlet weak var btnOpcionC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Cargar las IMG a los botones
        btnOpcionA.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnOpcionA.setImage(UIImage.init(named: "radio_on"), for: .selected)
        btnOpcionB.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnOpcionB.setImage(UIImage.init(named: "radio_on"), for: .selected)
        btnOpcionC.setImage(UIImage.init(named: "radio_off"), for: .normal)
        btnOpcionC.setImage(UIImage.init(named: "radio_on"), for: .selected)
    }

    @IBAction func btnDetalle(_ sender: UIButton) {
        //Crear objeto del archivo Main
        let main = UIStoryboard(name: "Main", bundle: nil)
        //Crear objeto de la clase DetallePruebaViewController
        let pantalla2 = main.instantiateViewController(withIdentifier: "detalle") as! DetallePruebaViewController
        pantalla2.cod = 666
        pantalla2.nom = "Luisito"
        //Validar boton seleccionado
        if btnOpcionA.isSelected{
            print("Opcion A")
        }
        else if btnOpcionB.isSelected{
            print("Opcion B")
        }
        else{
            print("Opcion C")
        }
        //Direccionar
        present(pantalla2, animated: true)
    }
    
    @IBAction func btnBotones(_ sender: UIButton) {
        if sender == btnOpcionA{
            btnOpcionA.isSelected = true
            btnOpcionB.isSelected = false
            btnOpcionC.isSelected = false
        }
        else if sender == btnOpcionB{
            btnOpcionA.isSelected = false
            btnOpcionB.isSelected = true
            btnOpcionC.isSelected = false
        }
        else{
            btnOpcionA.isSelected = false
            btnOpcionB.isSelected = false
            btnOpcionC.isSelected = true
        }
    }
}

