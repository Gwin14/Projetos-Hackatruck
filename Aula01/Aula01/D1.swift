//
//  ContentView.swift
//  Aula01
//
//  Created by Turma02-9 on 28/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            HStack {
                Text("")
                    .frame(width: 100.0, height: 100.0)
                    .background(Color.red)
                    
                
                Spacer()
                    
                Text("")
                    .frame(width: 100.0, height: 100.0)
                    .background(Color.blue)
            }
            
            Spacer()
            
            HStack {
                Text("")
                    .frame(width: 100.0, height: 100.0)
                    .background(Color.green)
                
                Spacer()
                
                Text("")
                    .frame(width: 100.0, height: 100.0)
                    .background(Color.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
