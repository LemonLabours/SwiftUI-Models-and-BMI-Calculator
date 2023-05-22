import SwiftUI
struct Alarm: Identifiable {
    var id = UUID()
    var myAlarmTime: String
    var myAlarmDay: String
    var alarmToggle: Bool
}

let alarm1 = Alarm(myAlarmTime: "2:10am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm2 = Alarm(myAlarmTime: "2:30am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm3 = Alarm(myAlarmTime: "3:00am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm4 = Alarm(myAlarmTime: "3:10am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm5 = Alarm(myAlarmTime: "3:30am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm6 = Alarm(myAlarmTime: "4:30am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm7 = Alarm(myAlarmTime: "5:30am", myAlarmDay: "Mon,22 May", alarmToggle: true)
let alarm8 = Alarm(myAlarmTime: "8:30am", myAlarmDay: "Mon,22 May", alarmToggle: true)

let allAlarms = [alarm1, alarm2, alarm3, alarm4, alarm5, alarm6, alarm7, alarm8]
