import SwiftUI

struct Tela3: View {
    
    @State var nome = ""
    
    var body: some View {
        VStack {
            Text("Meu sonho")
                .font(.title)
            
            Spacer()
            
            VStack {
                Text("Ninguém pode saber")
                    .font(.largeTitle)
                    .frame(width: 330, height: 100)
                    .background(Color.red)
                    .cornerRadius(10)
                
                NavigationLink(destination: Tela4(nome: $nome)) {
                    Text("Saber mesmo assim")
                        .foregroundColor(.black)
                        .fontWeight(.black)
                }
                
                TextField("Diga seu nome", text: $nome)
                    .background(Color.white)
                    .frame(width: 200)
                    .frame(width: 350, height: 40)
            }
            .background(Color.blue)
            .cornerRadius(3.0)
            
            Spacer()
        }
    }
}

struct Tela3_Previews: PreviewProvider {
    static var previews: some View {
        Tela3()
    }
}
