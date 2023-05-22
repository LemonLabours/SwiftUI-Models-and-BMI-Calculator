import SwiftUI

struct MCMenuView: View {
    var body: some View {
        VStack(spacing: 0) { // Set spacing to 0 between header and scroll view
            McHeader()
            
            ScrollView {
                ForEach(allMC) { mc in
                    HStack {
                        Image(mc.mcImage)
                            .resizable()
                            .frame(width: 100, height: 80)
                        Spacer()
                        VStack(alignment: .leading) {
                            Text(mc.mcName)
                            Text("From SR\(mc.mcPrice)")
                                .foregroundColor(Color.AqarGreen)
                        }
                        Spacer()
                        Image(systemName: "arrow.right")
                        Spacer()
                    }
                }
            }
        }
    }
}

struct MCMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MCMenuView()
    }
}
