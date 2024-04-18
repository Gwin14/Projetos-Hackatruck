
import SwiftUI

struct DesafioInfo: View {
    var body: some View {
        
        ScrollView{
            
            HStack{
                Text("Made whatzapp")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(minHeight: 100)
                
                Spacer()
            }
            
            Button("Accept") {
            }
            .foregroundColor(.white)
            .font(.title)
            .fontWeight(.bold)
            .frame(width: 240,height: 70)
            .background(Color("CorPrincipal"))
            .cornerRadius(15)
            .shadow(color: Color("CorPrincipal").opacity(0.5), radius: 20, x: 0, y: 10)
            
            VStack{
                Spacer()
                
                HStack{
                    Text("Made by: Marilia Mendonça")
                    
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
            }
            .frame(height: 80)
            
            HStack{
                
                AsyncImage(url: URL(string: "https://i.pinimg.com/originals/39/81/83/398183d05f839d3c448a0053bf11d8bc.png")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .background(Color("CinzaClaro"))
                        .cornerRadius(10)
                    
                    
                } placeholder: {
                    ProgressView()
                }
                Spacer()
                
            }
            
            Divider()
                .background(Color("CorPrincipal"))
            
            VStack{
                
                Text("Fazer o whatzap no seu celular, fazendo o whatzao no seu celular, voce faz o whatzap no seu celular")
                
            }
            .frame(width: 300)
            .padding()
            //.border(.gray)
            //.cornerRadius(10)
            
            
            
        }
        .padding()
        
        
    }
}

#Preview {
    DesafioInfo()
}
