import SwiftUI

struct BMIView: View {
    var body: some View {
        NavigationView {
            BMI()
                .navigationBarTitle("BMI Calculator")
        }
    }
}

struct BMIView_Previews: PreviewProvider {
    static var previews: some View {
        BMIView()
    }
}

