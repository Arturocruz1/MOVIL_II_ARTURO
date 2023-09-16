//
//  NumerosViewController.swift
//  AppPantallas
//
//  Created by DAMII on 11/09/23.
//

import UIKit

class NumerosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBSegueAction func relacion(_ x: NSCoder) -> DetalleNumerosViewController? {
        let vc = DetalleNumerosViewController(coder: x)
        vc!.cod = 12345
        vc!.nom = "Anita"
        return vc
    }
}
