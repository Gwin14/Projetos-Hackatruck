//
//  ViewModel.swift
//  Aula08 Api Propria
//
//  Created by Turma02-9 on 10/04/24.
//

import Foundation

class ViewModel:ObservableObject{
    
    func postRequest(){
        
        
        guard let url = URL(string: "http://127.0.0.1:1880/enviar") else{
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let carro1 = Carros(modelo: "Fiat", ano: 2022, cor: "Preto", preco: 35234.43, foto: "fiat_photo.jpg")
        let carro2 = Carros(modelo: "Honda", ano: 2020, cor: "Prata", preco: 28000.0, foto: "honda_photo.jpg")
        
        let estacionamento = Estacio(nomeEstacionamento: "Dosuper", quantidadeVagas: 4, carros: [carro1, carro2])
        
        let data = try! JSONEncoder().encode(estacionamento)
        request.httpBody = data
        
        request.setValue(
            "application/json",
            forHTTPHeaderField: "Content-Type"
        )
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            let statusCode = (response as! HTTPURLResponse).statusCode
            
            if statusCode == 200 {
                print("SUCCESS")
            } else {
                print("FAILURE")
            }
        }
        
        task.resume()
    }
    
    
    @Published var chars: [Estacio] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/leitura") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Estacio].self, from: data)
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            } catch{
                print(error)
            }
            
        }
        task.resume()
    }
}
