import SwiftUI

/// A view that displays a list of reminders
struct RemindersList: View {
    /// The reminders belonging to this list
    @Binding var reminders: [Reminder]

    /// The body of the view
    var body: some View {
        NavigationView {
            List {
                ForEach(reminders) { reminder in
                    HStack {
                        Button(action: {
                            if let index = reminders.firstIndex(of: reminder) {
                                reminders[index].isComplete.toggle()
                            }
                        }, label: {
                            Image(systemName: reminder.isComplete ? "largecircle.fill.circle" : "circle")
                                .imageScale(.large)
                        })
                        VStack {
                            Text(reminder.title)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                Button(action: {
                    // TODO: Add a new reminder
                    print("Add new reminder code!")
                }, label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add Reminder")
                    }
                })
            }
            .listStyle(PlainListStyle())
            .navigationTitle("My Reminders v1")
        }
    }
}



struct RemindersListPreviewContainer : View {
    // Bound state could not be added directly to the PreviewProvider, but it works like this.
    // https://developer.apple.com/forums/thread/118589
    @State var myReminders = testReminders
     var body: some View {
          RemindersList(reminders: $myReminders)
     }
}
struct RemindersList_Previews: PreviewProvider {
    static var previews: some View {
        RemindersListPreviewContainer()
    }
}
