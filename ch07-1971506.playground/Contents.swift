import Cocoa

var greeting = "Hello, playground"

let names: [String] = ["tiger", "fox","lion", "bear"]
let reversed0 = names.sorted(by: { (first:String, secound: String) -> Bool in return first > secound})
print(reversed0)
