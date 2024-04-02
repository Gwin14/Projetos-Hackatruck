//
//  Tela3.swift
//  Aula03 desafio varias telas
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct Tela3: View {
    var body: some View {
        Text("Meu sonho")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        
        Spacer()
        
        VStack{
            Text("")
            Text("Ninguém pode saber")
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .frame(width: 330, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .background(.red)
                .cornerRadius(10)
            
            NavigationLink(destination:Tela4()){
                Text("Saber mesmo assim")
                    .foregroundStyle(Color(.black))
                    .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            }
            .frame(width: 350, height: 40)

            
        }
        .background(Color(.blue))
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
        Spacer()
    }
}

#Preview {
    Tela3()
}
