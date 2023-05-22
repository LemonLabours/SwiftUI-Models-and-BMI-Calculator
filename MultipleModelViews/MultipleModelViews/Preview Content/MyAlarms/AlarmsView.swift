import SwiftUI

struct AlarmsView: View {
    @State var alarmToggle = true
    var body: some View {
        ZStack {
            Color.AqarLightGray
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    Spacer()
                        .frame(width: 30)
                    Text("Alarm")
                        .font(.largeTitle)
                    Spacer()
                
                    Image(systemName: "plus")
                        .font(.largeTitle)
                    Spacer()
                        .frame(width: 30)
                    VStack{
                        Circle()
                            .frame(width: 5,height: 5)
                        Circle()
                            .frame(width: 5,height: 5)
                        Circle()
                            .frame(width: 5,height: 5)
                    }
                    Spacer()
                        .frame(width: 30)
                }
                ScrollView {
                    ForEach(allAlarms) { alarm in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                                .padding()
                            
                            VStack {
                                Spacer()
                                    .frame(height: 60)
                                HStack {
                                    Spacer()
                                        .frame(width: 10)
                                    Text(alarm.myAlarmTime)
                                        .font(.title)
                                    Spacer()
                                        .frame(width: 50)
                                    
                                    Text(alarm.myAlarmDay)
                                        .font(.subheadline)
                                   
                                    Toggle(isOn:$alarmToggle) {
                                        EmptyView()
                                    }
                                    .toggleStyle(SwitchToggleStyle(tint: .purple))
                                    Spacer()
                                        .frame(width: 10)
                                }
                                .padding()
                                Spacer()
                                    .frame(height: 60)
                            }
                        }
                        
                    }
                }
            }
        }
    }
}

struct AlarmsView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmsView()
    }
}
