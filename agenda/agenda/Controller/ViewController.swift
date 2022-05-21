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
    @IBOutlet weak var tableViewCellAgenda: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCellAgenda.dataSource = self
        
    }
    
    @IBAction func pesquisar() {
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itensAgenda.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewCellAgenda.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as? AgendaTableViewCell
        cell?.sapecaLabel.text = itensAgenda[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
}
