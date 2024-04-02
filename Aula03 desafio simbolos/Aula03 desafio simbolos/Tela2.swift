//
//  Tela2.swift
//  Aula03 desafio simbolos
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct Tela2: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            Circle()
                .frame(height: 300)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    Tela2()
}
