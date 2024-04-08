//
//  ViewModel.swift
//  Aula07 api nasa
//
//  Created by Turma02-9 on 08/04/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var cards: [Card] = []
    
    func fetchData(completion: @escaping () -> Void) {
        guard let url = URL(string: "https://db.ygoprodeck.com/api/v7/cardinfo.php") else {
            print("Invalid URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Error fetching data: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(CardData.self, from: data)
                DispatchQueue.main.async {
                    self?.cards = decodedData.data
                    completion() // Chama o closure de conclusão após os dados serem carregados
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        task.resume()
    }
}
