import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    @State private var showingAlert = false
    
    @State private var quantidadeVagas = 01
    
    var body: some View {
        TabView {
            VStack {
                
//                VStack {
//                    Text("Quantidade de vagas")
//                        .font(.title)
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                        .padding(.vertical, 4)
//                    
//                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, value: $quantidadeVagas, formatter: NumberFormatter())
//                        .padding()
//                    
//                    Text("Carros")
//                        .font(.title)
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                        .padding(.vertical, 4)
//                    
//                    ForEach(0..<quantidadeVagas, id: \.self) { index in
//                        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                        
//                    }
//                }
//                .padding()
                
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
