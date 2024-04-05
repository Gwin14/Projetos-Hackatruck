//
//  TelaPerfil.swift
//  Aula06 api harry potter
//
//  Created by Turma02-9 on 05/04/24.
//

import SwiftUI

struct TelaPerfil: View {
    
    var tela = ""
    var nome = "nome"
    var dataNascimento = "nascimento"
    
    var patronus = "patronus"
    var casa = "casa"
    var ancestral = "ancestral"
    
    var body: some View {
        
        VStack{
            
            AsyncImage(url: URL(string: tela)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300)
            .cornerRadius(1000)
            
            Text(nome)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(dataNascimento)
            
            VStack{
                
Spacer()
                
                HStack{
                    Text("Patrono: \(patronus)")
                        .font(.title3)
                    Spacer()
                }
                .padding()
                .cornerRadius(12)
                
                Divider()
                
                HStack{
                    Text("Casa: \(casa)")
                        .font(.title3)
                    
                    Spacer()
                }
                .padding()
                .cornerRadius(12)
                
                Divider()
                
                HStack{
                    Text("Ancestral: \(ancestral)")
                        .font(.title3)
                    
                    Spacer()
                }
                .padding()
                .cornerRadius(12)
            }
            
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
    }
    
}

#Preview {
    TelaPerfil()
}
