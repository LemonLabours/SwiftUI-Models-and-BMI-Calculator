import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                    .frame(width: 20)
                VStack{
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .foregroundColor(Color.brownBK)
                        .bold()
                        Spacer()
                        .frame(height: 30)
                    Text("Drinks")
                        .font(.largeTitle)
                        .foregroundColor(Color.brownBK)
                        .bold()
                }
                Spacer()
            }
            Divider()
        }
        
    }
}
