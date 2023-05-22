import SwiftUI

struct Books : Identifiable {
    var id = UUID()
    
    var title : String
    var author : String
    var pages : String
    var publishDate: String
    var ratings: String
    var avrage : String
    var bookImage: String
}


let book1 = Books(title: "Harry Potter", author: "J.K. Rowling ", pages: "233", publishDate: "30 June 1997", ratings: "9,304,038", avrage: "4.47", bookImage: "hp")
let book2 = Books(title: "Worm", author: "WildBow", pages: "6680", publishDate: "30 June 1997", ratings: "8,404", avrage: "4.81", bookImage: "worm")


let AllBooks = [book1,book2,book1,book2,book1,book2,book1,book2,book1,book2]
