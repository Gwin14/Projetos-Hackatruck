import SwiftUI

struct Tela4: View {
    
    @Binding var nome: String
    
    var body: some View {
        VStack {
            Text("Meu sonho")
                .font(.title)
            
            Spacer()
            
            Text("Ser cantor")
                .font(.largeTitle)
                .frame(width: 180.0, height: 100)
                .background(Color.blue)
                .cornerRadius(10)
            
            Spacer()
            
            Text("Vou te caçar \(nome)")
        }
    }
}

struct Tela4_Previews: PreviewProvider {
    static var previews: some View {
        Tela4(nome: .constant(""))
    }
}
