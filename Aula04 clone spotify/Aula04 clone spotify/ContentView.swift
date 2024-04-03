//
//  ContentView.swift
//  Aula04 clone spotify
//
//  Created by Turma02-9 on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.black]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
                
                ScrollView(){
                    
                    Image("perfil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                    HStack{
                        Text("Rock brabo")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Spacer()
                       
                    }
                    .padding()
                    
                    HStack{
                        
                        Image("perfil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            
                        
                        Text("Fábio")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Spacer()
                      
                    }
                    .padding()
                    
                    ForEach(musicas, id: \.self){ e in
                        NavigationLink(destination: Telamusica(nome: e.nome, artista: e.artista, foto: e.foto)){
                            
                            HStack{
                                
                                Image(e.foto)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 95)
                                
                                VStack(){
                                    HStack{
                                        Text(e.nome)
                                            .foregroundColor(.white)
                                            .fontWeight(.black)
                                        
                                        Spacer()
                                    }
                                    HStack{
                                        Text(e.artista)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                    }
                                }
                                
                                
                                Spacer()
                                
                                Image(systemName: "ellipsis")
                                    .foregroundStyle(.white)
                                
                              
                                
                            }
                            .padding(.trailing)
                                
                        }
                        .frame(width:400, height: 100)
                        .background(Color(.black).opacity(0.3))
                    }
                    
                    
                    HStack{
                     
                        
                        Text("Sugeridos")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal){
                        HStack{
                            Image("tame")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                            
                            Image("five")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                            
                            Image("green")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                        }
                        .padding()
                    }
                }
            }
            
            
        }
        .accentColor(.white)

    }
}

struct Musica: Hashable{
    var nome: String
    var artista: String
    var foto: String
}

var musicas = [
    Musica(nome: "Us and Them", artista: "Pink Floyd", foto: "pinkfl"),
    Musica(nome: "Californication", artista: "Red Hot Chilli Peppers", foto: "califor"),
    Musica(nome: "Serenata existencialista", artista: "O Grilo", foto: "grilo")
]

#Preview {
    ContentView()
}
