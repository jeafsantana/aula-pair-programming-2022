//
//  SegundaViewController.swift
//  agenda
//
//  Created by Marcelo Falcao Costa Filho on 23/05/22.
//

import UIKit

class SegundaViewController: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    @IBOutlet weak var telefoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var pessoa: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraDados()
    }
    
    private func configuraDados() {
        nomeLabel.text = pessoa?.nome
        idadeLabel.text = String(pessoa?.idade ?? 0)
        enderecoLabel.text = pessoa?.endereco
        telefoneLabel.text = pessoa?.telefone
        emailLabel.text = pessoa?.email
        posterImageView.image = UIImage.init(named: pessoa?.foto ?? "")
    }
    
}
