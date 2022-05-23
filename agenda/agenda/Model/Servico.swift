//
//  Servico.swift
//  agenda
//
//  Created by Danielle Nozaki Ogawa on 2022/05/24.
//

import Foundation

class Servico {
    var itensAgenda: [Pessoa] = [
        Pessoa(nome: "Marcelo", idade: 25, endereco: "rua 2", telefone: "1", email: "marcelo@dh.com.br", foto: "marcelo"),
        Pessoa(nome: "Jorge", idade: 26, endereco: "rua 3", telefone: "2", email: "jorge@dh.com.br", foto: "jorge"),
        Pessoa(nome: "Clodovil", idade: 27, endereco: "rua 4", telefone: "3", email: "clodovil@dh.com.br", foto: "clodovil"),
        Pessoa(nome: "Batata", idade: 28, endereco: "Rua 5", telefone: "4", email: "batata@dh.com.br", foto: "batata"),
        Pessoa(nome: "Adriano", idade: 29, endereco: "Rua 6", telefone: "5", email: "adriano@dh.com.br", foto: "Adriano"),
        Pessoa(nome: "Jessica", idade: 30, endereco: "Rua 7", telefone: "6", email: "jessica@dh.com.br", foto: "jessica")
    ]
    
    func filtrar(termo: String) -> [Pessoa] {
        var itemsFiltrados: [Pessoa] = []
        for item in itensAgenda {
            if item.nome.contains(termo) {
                itemsFiltrados.append(item)
            }
        }
        return itemsFiltrados
    }
}
