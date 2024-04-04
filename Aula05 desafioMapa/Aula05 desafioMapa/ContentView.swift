//
//  ContentView.swift
//  Aula05 desafioMapa
//
//  Created by Turma02-9 on 04/04/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var pagina = false
    @State private var nome = ""
    
    @State private var position = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -27.588571827825305, longitude: -48.598502146323824),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1
                              )
    )
    
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $position, annotationItems: locais) { local in
                MapAnnotation(coordinate: local.coordinate){
                    Image(systemName: "info.bubble.fill.rtl")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(Color(.orange))
                        .frame(width: 40)
                        .onTapGesture {
                            pagina.toggle()
                        }
                        .sheet(isPresented: $pagina){
                            PaginaInfo(titulo: local.name, texto: local.descripition, imagem: local.flag)
                        }
                }
                
            }
            .ignoresSafeArea()
            
            VStack{
                Color(.white)
                    .frame(height: 200)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .border(Color.white)
                    .cornerRadius(20)
                    .ignoresSafeArea()
                
                
                Spacer()
            }
            
            VStack{
                
                VStack{
                    Text("Mapa")
                        .font(.largeTitle)
                    Text(nome)
                }
                .padding()
                
                Spacer()
                
                HStack{
                    ForEach(locais, id: \.id){e in
                        
                        
                        
                        Image(e.flag)
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .onTapGesture {
                                position = MKCoordinateRegion(
                                    center: e.coordinate,
                                    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                )
                                
                                
                                nome = e.name
                            }
                    }
                }
            }
            .padding()
        }
        
    }
}


struct Localizacao: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let descripition: String
}

var locais = [
    Localizacao(name: "Pinheira", coordinate: CLLocationCoordinate2D(latitude: -27.883930866717744, longitude: -48.58836633925115), flag: "brasil", descripition: "A Praia da Pinheira é praticamente o paraíso do sul de Santa Catarina, com suas belezas naturais, águas límpidas, muitos atrativos para o lazer e proximidade com a capital . Possui infra-estrutura completa e conta com a hospedagem da POUSADA VILA DOS PESCADORES para você curtir estas maravilhas… A Praia de Cima, Praia de Baixo, Guarda do Embaú e Ponta do Papagaio, são algumas das opções ao seu dispor. Muito verde, rica flora e fauna. Um horizonte de morros e muitas ilhas. Com acesso pavimentado."),
    Localizacao(name: "Zurique", coordinate: CLLocationCoordinate2D(latitude: 47.37113466991877, longitude: 8.533642565429826), flag: "suica", descripition: "A cidade de Zurique, centro bancário e financeiro internacional, fica no extremo norte do lago Zurique, no norte da Suíça. As vias pitorescas do centro de Altstadt (Cidade Antiga), em ambos os lados do rio Limmat, refletem sua história pré-medieval. Calçadões na orla, como o Limmatquai, seguem o rio em direção a Rathaus, a prefeitura da cidade, que data do século XVII. "),
    Localizacao(name: "Parque Nacional de Sequoias", coordinate: CLLocationCoordinate2D(latitude: -29.371785397483055, longitude: -50.796640876819986), flag: "estados", descripition: "O Parque Nacional da Sequoia é um parque nacional nos Estados Unidos localizado no sul da Sierra Nevada, a leste de Visalia, Califórnia. O parque foi criado em 25 de setembro de 1890, protegendo uma área de 1 635 km² de terreno montanhoso florestal.")
]

#Preview {
    ContentView()
}
