//
//  ViewController.swift
//  agenda
//
//  Created by Jessica Santana on 20/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    let servico = Servico()
    var itensAgenda: [Pessoa] = []
    var itensAgendaFiltrados: [Pessoa] = []
    
    @IBOutlet weak var pesquisaTextField: UITextField!
    @IBOutlet weak var tableViewCellAgenda: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCellAgenda.dataSource = self
        tableViewCellAgenda.delegate = self
        itensAgenda = servico.itensAgenda
        
        itensAgendaFiltrados = itensAgenda
    }
    
    @IBAction func pesquisar() {
        let termoPesquisa = pesquisaTextField.text ?? ""
        itensAgendaFiltrados = servico.filtrar(termo: termoPesquisa)
        tableViewCellAgenda.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itensAgendaFiltrados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewCellAgenda.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as? AgendaTableViewCell
        cell?.sapecaLabel.text = itensAgendaFiltrados[indexPath.row].nome
        return cell ?? UITableViewCell()
    }
    
}

extension ViewController: UITableViewDelegate {
    
}
