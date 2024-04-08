import Foundation

struct CardData: Decodable {
    let data: [Card]
}

struct Card: Decodable , Identifiable{
    let id: Int
    let name: String
    let type: String
    let frameType: String
    let desc: String
    let atk: Int?
    let def: Int?
}
