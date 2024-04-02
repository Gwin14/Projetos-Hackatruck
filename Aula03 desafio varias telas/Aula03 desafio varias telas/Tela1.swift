//
//  Tela1.swift
//  Aula03 desafio varias telas
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct Tela1: View {
    var body: some View {
        Text("Meu nome")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        
        Spacer()
        
        Text("Shrek")
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .frame(width: 150.0, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .cornerRadius(10)
        
        Spacer()
    }
}

#Preview {
    Tela1()
}
