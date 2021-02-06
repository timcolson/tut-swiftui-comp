import SwiftUI

struct ContentView: View {
    
    @State var reminderData = testReminders

    var body: some View {
        RemindersList(reminders:$reminderData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
