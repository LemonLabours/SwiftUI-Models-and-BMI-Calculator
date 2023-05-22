import SwiftUI

struct BooksView: View {
    var body: some View {
        VStack(spacing: 0) {
            GRHeader()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(AllBooks) { book in
                        HStack {
                            Spacer()
                                .frame(width: 2)
                            Image(book.bookImage)
                                .resizable()
                                .frame(width: 120, height: 130)
                            Spacer()
                                .frame(width: 20)
                            VStack(alignment: .leading) {
                                Spacer()
                                Text(book.title)
                                    .bold()
                                    .font(.title3)
                                Text("by \(book.author)")
                                    .font(.subheadline)
                                Text("You Rated it ⭐️⭐️⭐️⭐️⭐️")
                                    .bold()
                                    .font(.subheadline)
                                Text("\(book.avrage) average")
                                    .font(.subheadline)
                                Text("\(book.ratings) ratings")
                                    .font(.subheadline)
                                Text("First published \(book.publishDate)")
                                    .font(.subheadline)
                                Text("\(book.pages) pages")
                                    .font(.subheadline)
                                Spacer()
                            }
                        }
                    }
                }
                .padding()
                
                Divider()
            }
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom) // Ignore the bottom safe area
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
