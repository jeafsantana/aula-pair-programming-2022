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
    
    var pessoa: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCellAgenda.dataSource = self
        tableViewCellAgenda.delegate = self

        itensAgenda = servico.itensAgenda
        itensAgendaFiltrados = itensAgenda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "detalheSegueIdentifier" else { return }
        guard let segundaVC = segue.destination as? SegundaViewController else { return }
  
        segundaVC.pessoa = sender as? Pessoa
    }
    
    @IBAction func pesquisar() {
        let termoPesquisa = pesquisaTextField.text ?? ""
        let resultado = servico.filtrar(termo: termoPesquisa)
        
        if resultado.count == 0 {
            pesquisaTextField.layer.borderWidth = 1
            pesquisaTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            pesquisaTextField.layer.borderWidth = 0
            itensAgendaFiltrados = resultado
            tableViewCellAgenda.reloadData()
        }
    }
    
    @IBAction func pesquisaChanged() {
        let termo = pesquisaTextField.text ?? ""
        
        if (termo.isEmpty) {
            itensAgendaFiltrados = itensAgenda
            tableViewCellAgenda.reloadData()
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let pessoa = itensAgendaFiltrados[indexPath.row]
       
        performSegue(withIdentifier: "detalheSegueIdentifier", sender: pessoa)
    }
    
}
