import SwiftUI

struct MCMenu : Identifiable {
    var id = UUID()
    
    var mcName : String
    var mcPrice : String
    var mcImage : String
    
}

let mc1 = MCMenu(mcName: "Silicon McCafe Tumbler", mcPrice: "70.00", mcImage: "mcd")
let mc2 = MCMenu(mcName: "Diamond McCafe Tumbler", mcPrice: "70.00", mcImage: "mcc")
let mc3 = MCMenu(mcName: "Silicon McCafe Tumbler", mcPrice: "70.00", mcImage: "mcd")


let allMC = [mc1,mc2,mc3,mc1,mc2,mc3,mc1,mc2,mc3]
