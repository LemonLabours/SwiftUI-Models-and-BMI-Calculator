import SwiftUI

struct McHeader: View {
    var body: some View {
      
            VStack {
                ZStack {
                    Color.AqarLightGray
                        .ignoresSafeArea()
                    HStack {
                        Spacer()
                            .frame(width: 1)
                        Image(systemName: "arrow.left")
                            .font(.largeTitle)
                        Spacer()
                            .frame(width: 50)
                        Text("McDelivery™")
                            .font(.largeTitle)
                    }
                    .padding() // Add padding to the HStack
                }
                .frame(height: 50) // Set a fixed height for the header
                
                HStack {
                    Spacer()
                        .frame(width: 20)
                    Image("Hamburger")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    Image("banner")
                        .resizable()
                        .frame(width: 200, height: 70)
                    Spacer()
                }
              
            }
          
        }
    }

