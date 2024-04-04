//
//  PaginaInfo.swift
//  Aula05 desafioMapa
//
//  Created by Turma02-9 on 04/04/24.
//

import SwiftUI

struct PaginaInfo: View {
    
    var titulo = "titulo"
    var texto = "resumoooooooooooooo"
    var imagem = "brasil"
    
    var body: some View {
        ScrollView{
            Text(titulo)
                .font(.largeTitle)
            
            Image(imagem)
                .resizable()
                .scaledToFit()
            
            Text(texto)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PaginaInfo()
}
