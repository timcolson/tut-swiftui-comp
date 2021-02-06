import SwiftUI

struct ReminderListItem: View {
    
    let reminder: Reminder
    
    /// Closure trigger type for status button tap
    typealias DidTapStatusButtonClosure = () -> Void
    
    /// Closure to trigger when the status button has been tapped
    let didTapStatusButton: DidTapStatusButtonClosure
    
    var body: some View {
        HStack {
            statusButton; titleView   // semicolon visual 
        }
    }
    
    // MARK: -  Components
    private var titleView: some View {
        VStack (alignment: .leading){
            Text(reminder.title)
            Text(reminder.assignee).font(.caption) // mod > 2 ? make custom style
        }
    }
    
    private var statusButton: some View {
        Button(action: {
            didTapStatusButton()
        }, label: {
            let iconName = reminder.isComplete ? "largecircle.fill.circle" : "circle"
            Image(systemName: iconName)
                .imageScale(.large)
        })
        .buttonStyle(PlainButtonStyle())
    }
}


// MARK: - Preview
struct ReminderListItem_Previews: PreviewProvider {
    static var previews: some View {
        ReminderListItem(reminder: testReminders[0])
        {
            // do nothing
        }
    }
}
