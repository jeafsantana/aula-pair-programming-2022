//
//  ViewController.swift
//  agenda
//
//  Created by Jessica Santana on 20/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var itensAgenda: [String] = [
        "Marcelo", "Jorge", "Clodovil", "Batata", "Adriano", "Jessica"
    ]

    @IBOutlet weak var pesquisaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pesquisar() {
        
    }

}

