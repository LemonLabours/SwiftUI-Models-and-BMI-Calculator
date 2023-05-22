import SwiftUI

struct Menu : Identifiable {
    var id = UUID()
    
    var drinkName : String
    var drinkPrice : String
    var drinkImage : String
    
}

let drink1 = Menu(drinkName: "Coca-Cola", drinkPrice: "SAR 7.00", drinkImage: "cola")
let drink2 = Menu(drinkName: "Coca-Cola zero", drinkPrice: "SAR 7.00", drinkImage: "cola-zero")
let drink3 = Menu(drinkName: "Fanta", drinkPrice: "SAR 7.00", drinkImage: "fanta")
let drink4 = Menu(drinkName: "Sprite", drinkPrice: "SAR 7.00", drinkImage: "sprite")
let drink5 = Menu(drinkName: "Water", drinkPrice: "SAR 7.00", drinkImage: "water")

let allDrinks = [drink1,drink2,drink3,drink4,drink5]
