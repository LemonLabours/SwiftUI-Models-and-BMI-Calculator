import SwiftUI

struct GRHeader: View {
    var body: some View {
        ZStack {
            Color.bgBK
                .ignoresSafeArea()
                .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2) // Add shadow effect
            
            HStack {
                Spacer()
                    .frame(width: 20)
                Image(systemName: "arrow.left")
                    .font(.largeTitle)
                Spacer()
                    .frame(width: 20)
                Text("Read")
                    .font(.largeTitle)
                Spacer()
            }
        }
        .frame(height: 60) // Set a fixed height for the header
    }
}
