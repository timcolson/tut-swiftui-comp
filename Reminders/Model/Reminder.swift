import Foundation

struct Reminder : Identifiable, Equatable {
    var id = UUID()
    var title : String = "tbd"
    var isComplete : Bool = false
    var assignee : String = "@TBD"
}

#if DEBUG
// Create some reminder data elements for dev/test.
// These should perhaps be in a Model.
let testReminders = [
    Reminder(title: "Collect Underpants", isComplete: false, assignee: "@UnderGnome"),
    Reminder(title: "???", isComplete: false, assignee: "@WizardGnome"),
    Reminder(title: "PROFIT!!!", isComplete: false, assignee: "@TimColson")
]
#endif
