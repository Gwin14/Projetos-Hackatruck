
import SwiftUI

struct PaginaPerfil: View {
    
    //name, username, email
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                AsyncImage(url: URL(string: "https://www.petz.com.br/blog//wp-content/uploads/2023/02/perfil-de-gato.jpg")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 140)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color("CorPrincipal"), lineWidth: 15)
                            
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                } placeholder: {
                    ProgressView()
                }
                
                Text("Receba")
                    .font(.title)
                    .fontWeight(.light)
                
                
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("\(24)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Tasks made:")
                            .frame(width: 120, height: 40)
                            .background(Color("CorPrincipal"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("\(24)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Tasks made:")
                            .frame(width: 120, height: 40)
                            .background(Color("CorPrincipal"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
                
                Text("Tasks in progress:")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(height: 80)
                
                
                NavigationLink(destination: DesafioInfo()){
                    
                    
                    AsyncImage(url: URL(string: "https://i.pinimg.com/originals/39/81/83/398183d05f839d3c448a0053bf11d8bc.png")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    
                    VStack(alignment: .leading){
                        Text("Make Whatzapp")
                            .foregroundStyle(Color("CorNormal"))
                        
                        Text("10 hours left")
                            .foregroundStyle(.orange)
                    }
                    Spacer()
                    
                    
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(Color("CorPrincipal"))
                        .frame(height: 35)
                    
                    Spacer()
                    
                }
                .background(Color("CinzaClaro"))
                .cornerRadius(10)
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    PaginaPerfil()
}
