//
//  Telamusica.swift
//  Aula04 clone spotify
//
//  Created by Turma02-9 on 03/04/24.
//

import SwiftUI

struct Telamusica: View {
    
    @State var nome:String = "nome"
    @State var artista:String = "artista"
    @State var foto: String = ""
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image(foto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                Text(nome)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Text(artista)
                    .foregroundStyle(.white)
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Image(systemName: "shuffle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(.white)

                    
                    Spacer()
                    
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(.white)

                    
                    Spacer()
                    
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(.white)

                    
                    
                    Spacer()
                    
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(.white)

                    
                    Spacer()
                    
                    Image(systemName: "repeat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundStyle(.white)

                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}
#Preview {
    Telamusica()
}
