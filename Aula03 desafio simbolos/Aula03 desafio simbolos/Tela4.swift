//
//  Tela4.swift
//  Aula03 desafio simbolos
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct Tela4: View {
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Lista")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            .padding()
            
            List {
                HStack{
                    Text("Tela 01")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                
                HStack{
                    Text("Tela 02")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                } 
                
                HStack{
                    Text("Tela 03")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
        }
    }
}

#Preview {
    Tela4()
}
