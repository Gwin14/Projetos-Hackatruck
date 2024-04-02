//
//  ContentView.swift
//  Aula03 desafio simbolos
//
//  Created by Turma02-9 on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white

    }
    
    var body: some View {
        
        
        
        TabView(selection: .constant(1)) {
            Tela1()
            .tabItem { Image(systemName: "paintbrush") }
            
            
            Tela2()
            .tabItem { Image(systemName: "paintbrush.pointed")}
            
            
            Tela3()
            .tabItem {  Image(systemName: "paintpalette") }
            
            
            Tela4()
            .tabItem { Image(systemName: "list.bullet") }
            
        }
    }
}

#Preview {
    ContentView()
}
