import Foundation

guard
    let jsonURL = Bundle.main.url(forResource: "data", withExtension: "json"),
    let jsonData = try? Data(contentsOf: jsonURL)
else { fatalError("Invalid JSON data") }

let decoder = JSONDecoder()
let skin = try! decoder.decode(MetaSkin.self, from: jsonData)
print(skin)
