//
//  D2.swift
//  Aula01
//
//  Created by Turma02-9 on 28/03/24.
//

import SwiftUI

struct D2: View {
    var body: some View {
        HStack{
            Image("sonic")
                .resizable()
                .scaledToFit()
                .frame(width: 120.0, height: 120.0)
                .clipShape(Circle())
            VStack{
                Text("Sonic o ouriço")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("3 filmes")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Todas as regiões do brasil")  
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
    }
}

#Preview {
    D2()
}
