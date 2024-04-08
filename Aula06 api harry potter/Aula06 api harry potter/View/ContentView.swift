//
//  ContentView.swift
//  Aula06 api harry potter
//
//  Created by Turma02-9 on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        
        NavigationStack {
            
            VStack{
                
                HStack{
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundStyle(.blue)
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundStyle(.blue)
                    
                    Image(systemName: "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10)
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundStyle(.blue)
                    
                }
                
                VStack{
                    
                    HStack{
                        Text("Conversas")
                            .font(.largeTitle)
                            .fontWeight(.black)
                        
                        Spacer()
                    }
                    
                    
                }
            }
            .padding()
            
            TabView{
                
                
                
                ScrollView{
                    
                    HStack{
                        Image(systemName: "archivebox.fill")
                            .foregroundStyle(.gray)
                        Text("Arquivadas")
                            .font(.title2)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    
                    Divider()
                    
                    ForEach(viewModel.chars){ index in
                        NavigationLink(destination: TelaPerfil(tela: index.image!, nome: index.name!, dataNascimento: index.dateOfBirth ?? "", patronus: index.patronus ?? "", casa: index.house ?? "", ancestral: index.ancestry ?? "")){
                            AsyncImage(url: URL(string: index.image!)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 80, height: 80)
                            .cornerRadius(100)
                            
                            VStack{
                                HStack{
                                    Text(index.name!)
                                        .font(.title3)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                        .foregroundStyle(.black)
                                    Spacer()
                                }
                                HStack{
                                    Text(index.patronus!)
                                        .foregroundStyle(.black)
                                    Spacer()
                                }
                            }
                            
                            VStack{
                                Text(index.dateOfBirth ?? "")
                                    .foregroundStyle(.gray)
                                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                                
                                Spacer()
                            }
                            
                            Spacer()
                            
                        }
                        Divider()
                    }
                    
                }
                .tabItem { Image(systemName: "person.3") }
                .padding()
            }
            
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
