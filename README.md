# tut-swiftui-comp

SwiftUI composition exercises inspired by the Reminders view and strategies from Pacheco article, and Paul Hudson article/video on better SwiftUI views. 

- [Joseph Pacheco - A guide to sensible composition in SwiftUI](https://triplebyte.com/blog/a-guide-for-sensible-composition-in-swiftui?ref=ssnews_blog)

- [Paul Hudson - 5 Steps to Better SwiftUI Views](https://www.hackingwithswift.com/articles/226/5-steps-to-better-swiftui-views)

_composing views_ : breaking views down into digestible components


## Strategies

Pacheco
1. Variables 
2. Functions
3. Separate Structs
4. Limit level of abstraction
5. Don't over compose

Hudson
1. Make supplementary views properties
2. Break larger views into smaller ones
3. Get action code out of view body
4. Create View extensions for Styling
5. Use ButtonStyle and friends

## Getting Started

If you are interested in working thru the tutorial, 

> git clone https://github.com/timcolson/tut-swiftui-comp

Start with v1...
> git checkout tags/v1

FYI - to return back to the main version
> git co main 

### Summary of Versions
v1 - initial working version

v2 - 𝚫 reminderListItems & newReminderButton to vars

v3 - make a func to display reminder

v4 - move ReminderItem to separate view

v5 - make view Modifier for style

v5.1 - use view modifier from extension
