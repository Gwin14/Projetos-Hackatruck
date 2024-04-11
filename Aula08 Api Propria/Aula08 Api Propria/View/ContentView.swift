import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    @State private var showingAlert = false
    
    var body: some View {
        TabView {
            NavigationView {
                
                
                Button("Mandar") {
                    viewModel.postRequest()
                }
                .fontWeight(.black)
                .frame(width: 200, height: 100)
                .background(.pink)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .alert("Carro adicionado com sucesso!", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
                
            }
            .padding()
            .tabItem { Label("Enviar", systemImage: "pencil")}
            
            
            NavigationView {
                List(viewModel.chars) { estacio in
                    VStack(alignment: .leading) {
                        Text(estacio.nomeEstacionamento!)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Divider()
                        
                        Text("Quantidade de Vagas: \(estacio.quantidadeVagas!)")
                        
                        Divider()
                        
                        Text("Carros:")
                            .font(.title2)
                        
                        ForEach(estacio.carros!, id: \.self) { carro in
                            Text("- \(carro.modelo), Ano \(carro.ano)")
                        }
                    }
                    .padding()
                }
                .navigationTitle("Estacionamentos")
                .onAppear {
                    viewModel.fetch()
                }
            }
            .tabItem {
                Label("Estacionamentos", systemImage: "building")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
