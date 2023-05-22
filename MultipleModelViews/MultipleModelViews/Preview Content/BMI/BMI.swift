import SwiftUI

struct BMI: View {
    @State private var weight: Double = 70
    @State private var height: Double = 170
    @State private var bmiResult: String = ""
    @State private var bmiStatus: String = ""
    @State private var backgroundColor: Color = .white

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                VStack {
                    Text("Height (cm)")
                        .font(.headline)
                    HStack {
                        Spacer()
                            .frame(width: 20)
                        Text("0")
                        Slider(value: $height, in: 0...250, step: 1)
                            .padding(.horizontal)
                        Text("250")
                        Spacer()
                            .frame(width: 20)
                    }
                    Text(String(format: "%.0f", height))
                }
                
                VStack {
                    Text("Weight (kg)")
                        .font(.headline)
                    HStack {
                        Spacer()
                            .frame(width: 20)
                        Text("0")
                        Slider(value: $weight, in: 0...500, step: 1)
                            .padding(.horizontal)
                        Text("500")
                        Spacer()
                            .frame(width: 20)
                    }
                    Text(String(format: "%.1f", weight))
                }
                
                Button(action: {
                    let heightInMeters = height / 100
                    let bmi = weight / (heightInMeters * heightInMeters)
                    bmiResult = String(format: "BMI: %.1f", bmi)
                    
                    if bmi < 18.5 {
                        bmiStatus = "Low"
                        backgroundColor = .red
                    } else if bmi > 24.9 {
                        bmiStatus = "High"
                        backgroundColor = .red
                    } else {
                        bmiStatus = "Normal"
                        backgroundColor = .green
                    }
                }) {
                    Text("Calculate BMI")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                VStack {
                    Text(bmiResult)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                    Text(bmiStatus)
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }
        }
        .animation(.default)
    }
}
