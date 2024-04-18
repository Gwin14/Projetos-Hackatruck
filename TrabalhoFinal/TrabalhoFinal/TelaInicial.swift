

import SwiftUI

struct TelaInicial: View {
    var body: some View {
        
        NavigationStack{
            
            Image("ImagemFundo")
                .resizable()
                .ignoresSafeArea()
                .frame(height: 380)
            
            Text("CrowdThink")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(Color("CorPrincipal"))
            
            Spacer()
            
            Text("Find your favorite company and prove your skills")
                .multilineTextAlignment(.center)
                .frame(width: 300)
            
            Spacer()
            
            NavigationLink(destination: Tab().navigationBarBackButtonHidden(true)){
                HStack{
                    
                    Spacer()
                    
                    Text("Next")
                        .foregroundStyle(Color(.white))
                    
                    Spacer()
                    
                  
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                        .frame(height: 40)
                }
                .padding()
            }
            .frame(width: 200,height: 60)
            .background(Color("CorPrincipal"))
            .cornerRadius(100)
            .shadow(color: Color("CorPrincipal").opacity(0.5), radius: 20, x: 0, y: 10)

           Spacer()
          
        }
        
        .ignoresSafeArea()

    }
}

#Preview {
    TelaInicial()
}
