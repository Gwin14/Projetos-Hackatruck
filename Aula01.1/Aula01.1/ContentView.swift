//
//  ContentView.swift
//  Aula01.1
//
//  Created by Turma02-9 on 28/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var nome: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ZStack{
        Image("wallpaper")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            
            VStack{
                
                VStack(alignment: .center){
                   
                    Text("Bem vindo, " + nome)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.white)
                       
                    
                    TextField("Diga seu nome:", text: $nome)
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.center)
                        
                }
                
                Spacer()
                
               Image("emoji")
                   .resizable()
                   .scaledToFit()
                   .frame(width: 200)
                
                Spacer()
                
                VStack{
                    Button("Reação") {
                        showAlert = true
                        
                    }

                    .alert("QUE SUSTO!", isPresented: $showAlert) {
                        Button("OK") { }
                    }
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }

