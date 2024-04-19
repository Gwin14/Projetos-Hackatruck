import SwiftUI

struct ContentView: View {
    @State private var title = ""
    @State private var description = ""
    
    @State private var isTitlePlaceholderHidden = false
    @State private var isDescriptionPlaceholderHidden = false
    
    @State private var tag = "Escolha sua Linguagem"
    
    @State private var html = true
    @State private var java = false
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                //                HStack {
                //                    Spacer()
                //                    AsyncImage(url: URL(string: "https://www.petz.com.br/blog//wp-content/uploads/2023/02/perfil-de-gato.jpg")) { image in
                //                        image
                //                            .resizable()
                //                            .scaledToFill()
                //                            .frame(width: 40, height: 40)
                //                            .overlay(
                //                                RoundedRectangle(cornerRadius: 30)
                //                                    .stroke(Color("CorPrincipal"), lineWidth: 0)
                //
                //                            )
                //                            .clipShape(RoundedRectangle(cornerRadius: 30))
                //                    } placeholder: {
                //                        ProgressView()
                //                    }
                //                }
                
                Text("Lance um Desafio")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Divider()
                
                //                HStack {
                //                    Spacer()
                //                    Menu {
                //                        Button(action: {tag = "Html"}) {
                //                            Text("HTML")
                //
                //                        }
                //                        Button(action: {tag = "Java"}) {
                //                            Text("Java")
                //                        }
                //
                //                    } label: {
                //                        HStack {
                //                            Text("\(tag)")
                //                                .padding()
                //
                //
                //                            Image(systemName: "arrowtriangle.down.fill")
                //                                .foregroundColor(Color("CorPrincipal"))
                //                        }
                //                        .frame(width: 300, height: 80)
                //                        .background(Color.gray.opacity(0.2))
                //                        .cornerRadius(10)
                //                    }
                //                    Spacer()
                //                }
                
                
                VStack {
                    
                    TextField("Insira um título", text: $title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .opacity(isTitlePlaceholderHidden ? 0 : 1)
                    
                    TextField("Descreva seu Desafio com Detalhes Aqui", text: $description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                        .padding()
                        .opacity(isDescriptionPlaceholderHidden ? 0 : 1)
                    
                }                    .frame(width: 300)
                
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                    .padding()
                
                VStack(spacing: 20) {
                    Button(action: {}) {
                        HStack {
                            Text("Deseja adicionar imagens?")
                            Image(systemName: "plus")
                        }
                        .padding()
                        .frame(width: 300)
                        .background(Color("CorPrincipal"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(color: Color("CorPrincipal").opacity(0.5), radius: 20, x: 0, y: 10)
                        
                    }
                    
                    Button(action: {}) {
                        Text("Postar Desafio")
                    }
                    .padding()
                    .frame(width: 300)
                    .background(Color("CorPrincipal"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: Color("CorPrincipal").opacity(0.5), radius: 20, x: 0, y: 10)
                }
                
                
            }
            .padding()
            
            Text("Tags")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            ScrollView(.horizontal){
                HStack {
                    Toggle(isOn: $html) {
                        Text("Html")
                    }
                    .toggleStyle(.button)
                    
                    Toggle(isOn: $java) {
                        Text("Java")
                    }
                    .toggleStyle(.button)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
