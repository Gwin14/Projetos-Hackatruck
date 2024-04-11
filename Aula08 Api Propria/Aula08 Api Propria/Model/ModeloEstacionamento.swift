//
//  ModeloEstacionamento.swift
//  Aula08 Api Propria
//
//  Created by Turma02-9 on 10/04/24.
//

import Foundation

struct Estacio: Codable, Identifiable{
    var id = UUID()
    
    let nomeEstacionamento: String?
    let quantidadeVagas: Int?
    let carros: [Carros]?
}

struct Carros: Codable, Hashable{
    let modelo: String
    let ano : Int
    let cor: String
    let preco: Double
    let foto: String
}
