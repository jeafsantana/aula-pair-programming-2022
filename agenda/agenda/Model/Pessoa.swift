//
//  Pessoa.swift
//  agenda
//
//  Created by Juliane Lopes Moreira Rodrigues on 20/05/22.
//

import Foundation

class Pessoa {
    let nome: String
    let idade: Int
    let endereco: String
    let telefone: String
    let email: String
    let foto: String
    
    init(nome: String, idade:Int, endereco: String, telefone: String, email: String, foto: String){
        self.nome = nome
        self.idade = idade
        self.endereco = endereco
        self.telefone = telefone
        self.email = email
        self.foto = foto
    }
}

