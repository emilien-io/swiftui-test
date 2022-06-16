# Text mirroring in SwiftUI

(Xcode 13.4.1)

In this project we use SwiftUI properties wrappers to reflect a textfield's value in a separated view.

# Properties wrappers

> State is inevitable in any modern app, but with SwiftUI it’s important to remember that all of our views are simply functions of their state – we don’t change the views directly, but instead manipulate the state and let _that_ dictate the result.
*(Paul Husdon, on [hackingwithswift](https://www.hackingwithswift.com/quick-start/swiftui/whats-the-difference-between-observedobject-state-and-environmentobject))*

Properties wrappers are one of the biggest features of SwiftUI. Some of them allows you to manage the state of your application.

- `@StateObject  private  var  entry` in `swiftui_testApp.swift`
	> This creates and owns the property `entry` that we will place in the environment later on.

- `@Published var value: String` in `Entry.swift`
	> The @Published keyword tells to SwiftUI we want to notify every views that observe this property.

- `@EnvironmentObject var  entry: Entry` in `Card.swift` and `Mirror.swift`
	>  An @EnvironmentObject catch a property we previously placed in the environment (the `entry` in `swiftui_testApp.swift`). This way we will get notified every time the @Published value is updated.
	In `Card.swift` we write the value using text-binding `$entry.value` and in `Mirror.swift` we read the value.

Using those 3 wrappers, `Mirror.swift` gets notified every time the `entry` is updated by `Card.swift` so the text is automatically reflected.

# Different approach

We could also have used an `@ObservedObject` property (see a different implementation on [swift_ui-observed-object](https://github.com/emilien-io/swiftui-test/tree/swift_ui-observed-object) branch.

Here, we use an `@ObservedObject` instead of using an `@AppState` object. As we saw earlier, the difference between these two wrapper is ownership. `@AppState` owns the object and handles its lifetime while `@ObservedObject` — as its name suggests — observe the object without owning it directly.

> Note: While `@EnvironmentObject` can be catch everywhere in your application (assuming that it has been previously placed in the environment), when we use `@ObservedObject`, if we want to pass the object from view A to D, it has to be passed through each views.

# Few references

- https://www.swiftbysundell.com/articles/property-wrappers-in-swift/
- https://www.hackingwithswift.com/quick-start/swiftui/whats-the-difference-between-observedobject-state-and-environmentobject
- https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-observedobject-property-wrapper
- https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-published-property-wrapper
- https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-state-property-wrapper
- https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-stateobject-property-wrapper
- https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-environmentobject-property-wrapper
