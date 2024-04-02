//
//  ContentView.swift
//  Aula03 desafio varias telas
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            Text("Características")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            NavigationLink(destination: Tela1()) {
                Text("Meu nome")
                    .foregroundStyle(Color(.black))
                    .frame(width: 300, height: 100)
                    .font(.title)
            }
            .background(Color.blue)
            .cornerRadius(8)
            
            NavigationLink(destination: Tela2()) {
                Text("Minha idade")
                    .foregroundStyle(Color(.black))
                    .frame(width: 300, height: 100)
                    .font(.title)
            }
            .background(Color.blue)
            .cornerRadius(8)
            
            NavigationLink(destination: Tela3()) {
                Text("Meu sonho")
                    .foregroundStyle(Color(.black))
                    .frame(width: 300, height: 100)
                    .font(.title)
            }
            .background(Color.blue)
            .cornerRadius(8)
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
