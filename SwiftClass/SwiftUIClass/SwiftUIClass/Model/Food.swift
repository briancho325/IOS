import Foundation

struct Food{
    var name: String
    var amount: Int
    var country: Int
    var person: Int
    init(_ name: String, _ amount: Int, _ country: Int, _ person: Int){
        self.name = name
        self.amount = amount
        self.country = country
        self.person = person
    }
}
