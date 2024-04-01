import SwiftUI

struct ContentView: View {
    
    @State private var peso: Double = 0	
    @State private var altura: Double = 0
    
    @State private var imcFinal: String = ""
    
    @State private var cor = Color(.white)
    
    var body: some View {
        
        
        ZStack{
            
            Color(cor)
                .ignoresSafeArea()
            
            
            VStack{
                
                VStack{
                    Text("Calculadora de IMC")
                        .font(.title)
                    
                    TextField("Diga seu peso", value: $peso, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                        .frame(height: 50)
                    
                    TextField("Diga sua altura", value: $altura, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                        .frame(height: 50)
                    
                    
                    Button("Calcular") {
                        
                        print("Peso: \(peso), Altura: \(altura)")
                        
                        let imc = peso / (altura * altura)
                        
                        if imc < 18.5{
                            cor = Color("BaixoPeso")
                        } else if imc <= 24.99{
                            cor = Color("Normal")
                        } else if imc <= 29.99{
                            cor = Color("Sobrepeso")
                        } else{
                            cor = Color("Obesidade")
                        }
                        
                       imcFinal = "\(imc)"
                        print("IMC calculado: \(imcFinal)")
                         
                    }
                    .buttonStyle(.bordered)
                    .tint(.purple)
                }
                
                Spacer()
                
                Text("IMC: \(imcFinal)")
                    .font(.title)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 450)
                
            }
            
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
