//
//  ContentView.swift
//  Aula07 api nasa
//
//  Created by Turma02-9 on 08/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State private var isLoading = true // Variável de estado para controlar o indicador de loading
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Carregando...") // Indicador de loading enquanto os dados estão sendo carregados
            } else {
                ForEach(viewModel.cards){ card in
                    VStack{
                        Text(card.name)
                        Text(card.type)
                    }
                    .padding()
                    .background(Color.gray)
                }
            }
        }
        .onAppear {
            viewModel.fetchData {
                isLoading = false // Atualiza o estado para indicar que os dados foram carregados
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
