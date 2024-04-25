import SwiftUI

struct Selected_challange: View {
    
    @State var imgPhoto: String = ""
    //    @State var description: String = ""
    @State var desafio_chosed: String = ""
    //    @State var price_offer: String = ""
    
    
    //@StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    
                    HStack {
                        Text("Desafios")
                            .padding()
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("em")
                            .padding()
                            .padding(.top, -40)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        AsyncImage(url: URL(string: "\(imgPhoto)")) { i in i
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .padding(.top, -20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .strokeBorder(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color("CorNormal"), Color("CorPrincipal")]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            ),
                                            lineWidth: 2
                                        )
                                )
                            
                            
                            
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 90, height: 90)
                        
                        Spacer()
                    }
                    
                    Divider()
                        .background(Color("CorPrincipal"))
                    
                    ScrollView {
                        ForEach(0..<5) { d in
                            
                            
                            ForEach(0..<5){t in
                                HStack {
                                    NavigationLink(destination: TelaInicial()) {
                                        AsyncImage(url: URL(string: "https://w7.pngwing.com/pngs/802/825/png-transparent-redbubble-polite-cat-meme-funny-cat-meme-thumbnail.png")) { i in i
                                                .resizable()
                                                .clipShape(Circle())
                                                .shadow(radius: 10)
                                                .overlay(Circle().stroke(Color("CorPrincipal").opacity(0.7), lineWidth: 3))
                                            
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 90, height: 90)
                                        
                                        VStack {
                                            
                                            Spacer()
                                            
                                            Text("Desafio taltal")
                                                .font(.title2)
                                                .foregroundStyle(Color("CorNormal"))
                                                .fontWeight(.bold)
                                            
                                            Spacer()
                                                .frame(height: 20)
                                            
                                            Text("Desafio descricao do desafio em fiz a descricao do desafio olha a descricao ")
                                                .frame(width: 170)
                                                .foregroundStyle(Color("CorNormal"))
                                            
                                            
                                            Divider()
                                            
//                                            HStack {
//                                                Image("\(desafio_chosed)")
//                                                    .resizable()
//                                                    .frame(width: 20, height: 20)
                                                
                                                Text("R$ \(454)")
                                                    .fontWeight(.heavy)
                                                    .foregroundStyle(Color("CorNormal"))
                                                
//                                            }
                                        }
                                    }
                                    
                                    
                                    Spacer()
                                }
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .strokeBorder(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color("CorNormal"), Color("CorPrincipal")]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            ),
                                            lineWidth: 2
                                        )
                                )
                            }
                            
                        }
                    }
                    
                    
                }
                .padding()
            }.onAppear(){
                // viewModel.fetchDesafios()
            }
        }
    }
}

#Preview {
    Selected_challange()
}
