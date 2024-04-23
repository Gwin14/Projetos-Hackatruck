
import SwiftUI

struct PostarDesafio: View {
    
    @State private var importing = false
    
    var body: some View {
        
        ScrollView{
            
            HStack{
                Text("Made whatzapp")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(minHeight: 100)
                
                Spacer()
            }
            
            VStack{
                
                Text("Fazer o whatzap no seu celular, fazendo o whatzao no seu celular, voce faz o whatzap no seu celular")
                
            }
            .frame(width: 300)
            .padding()
            
            
            Divider()
                .background(Color("CorPrincipal"))
            
            
            HStack {
                Button("Import") {
                    importing = true
                }
                .fileImporter(
                    isPresented: $importing,
                    allowedContentTypes: [.plainText]
                ) { result in
                    switch result {
                    case .success(let file):
                        print(file.absoluteString)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
                .foregroundColor(Color("CorPrincipal"))
                .font(.title2)
                //                .frame(width: 200,height: 40)
                .cornerRadius(10)
                .shadow(color: Color("CorPrincipal").opacity(0.5), radius: 20, x: 0, y: 10)
                
                Image(systemName: "archivebox")
                    .foregroundColor(Color("CorPrincipal"))
                
                
            }
            .frame(width:  100)
            
            Button("Post") {
            }
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.bold)
            .frame(width: 200,height: 40)
            .background(Color("CorPrincipal"))
            .cornerRadius(10)
            .shadow(color: Color("CorPrincipal").opacity(0.5), radius: 20, x: 0, y: 10)
             
            
        }
        .padding()
        
        
    }
}

#Preview {
    PostarDesafio()
}
