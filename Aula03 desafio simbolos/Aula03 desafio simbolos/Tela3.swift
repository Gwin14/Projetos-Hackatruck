//
//  Tela3.swift
//  Aula03 desafio simbolos
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct Tela3: View {
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            
            Circle()
                .frame(height: 300)
            Image(systemName: "paintpalette")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    Tela3()
}
