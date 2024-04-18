

import SwiftUI

struct Catalogo: View {
    var body: some View {
        
        NavigationStack{
            ScrollView{
                HStack{
                    Text("Categories")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                NavigationLink(destination: DesafioInfo()){
                    
                    
                    AsyncImage(url: URL(string: "https://i.pinimg.com/originals/39/81/83/398183d05f839d3c448a0053bf11d8bc.png")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    
                    
                    Text("Make Whatzapp")
                        .foregroundStyle(Color("CorNormal"))
                    
                    Spacer()
                    
                    Text("$\(95)")
                        .frame(width: 85,height: 85)
                        .foregroundStyle(Color("CorNormal"))
                        .background(Color("CinzaClaro"))
                        .cornerRadius(5)
                    
                    Spacer()
                    
                }
                .border(Color("CinzaClaro"))
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

#Preview {
    Catalogo()
}
