

import SwiftUI

struct Tab: View {
    
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection){
            PaginaPerfil().tabItem {
                
                Image(systemName: "person.fill")
                Text("Home")
            }
            
            Catalogo()
                .tabItem {
                    Image(systemName: "briefcase")
                    Text("Jobs")
                }.tag(1)
            
            ContentView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    
                    Text("New")
                }
            
            
        }
    }
}

#Preview {
    Tab()
}
