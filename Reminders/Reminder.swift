import Foundation

struct Reminder : Identifiable, Equatable {
    var id = UUID()
    var title : String = "tbd"
    var isComplete : Bool = false
}

#if DEBUG
// Create some reminder data elements for dev/test.
// These should perhaps be in a Model.
let testReminders = [
    Reminder(title: "Collect Underpants", isComplete: false),
    Reminder(title: "???", isComplete: false),
    Reminder(title: "PROFIT!!!", isComplete: false)
]
#endif
