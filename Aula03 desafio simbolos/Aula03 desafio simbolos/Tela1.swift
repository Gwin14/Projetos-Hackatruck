//
//  Tela1.swift
//  Aula03 desafio simbolos
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct Tela1: View {
    var body: some View {
        ZStack{
            Color.pink
                .ignoresSafeArea()
            
            Circle()
                .frame(height: 300)
            Image(systemName: "paintbrush")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    Tela1()
}
