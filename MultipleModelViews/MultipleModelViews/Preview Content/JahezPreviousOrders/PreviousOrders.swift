import SwiftUI

struct PreviousOrders : Identifiable {
    var id = UUID()
    
    var resturantName : String
    var dateOfOrder: String
    var status : String
}

let order1 = PreviousOrders(resturantName: "Shake Shak -شيك شاك ", dateOfOrder: "19-05-2023 06:08 PM", status: "d")
let order2 = PreviousOrders(resturantName: "Gosha - قوشة" , dateOfOrder: "19-05-2023 06:08 PM", status: "d")
let order3 = PreviousOrders(resturantName: "Gosha - قوشة" , dateOfOrder: "19-05-2023 06:08 PM", status: "r")
let order4 = PreviousOrders(resturantName: "Gosha - قوشة" , dateOfOrder: "19-05-2023 06:08 PM", status: "d")

let allOrders = [order1,order2,order3,order4,order1,order2,order3,order4]
