//
//  ContentView.swift
//  Aula08 Api Propria
//
//  Created by Turma02-9 on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        VStack {
            Button("Mandar") {
                viewModel.postRequest()
            }
            .fontWeight(.black)
            .frame(width: 200, height: 100)
            .background(.pink)
            .foregroundStyle(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
