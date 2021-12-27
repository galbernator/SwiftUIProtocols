# SwiftUIProtocols

This package is designed to work with an architecture that [Jim Boyd](https://github.com/jjamminjim) and I developed for a production, large-scale, full-featured SwiftUI application. These protocols are designed to be used in an MVVM+Coordinator architecture and provide the functions of the coordinator. For an example of the architecture, check it out [here](https://github.com/galbernator/SwiftUIArchitectureSample).

## Coordinator
Provides the initial view

```Swift
@ViewBuilder func start() -> some View {
    ContentView()
}
```

## Event Handler
Receives user interactions and processes them accordingly. Events are defined for each coordinator and essentially list the different actions a user can take from a specific screen. SwiftUI lifecylce events (e.g. - `onAppear`, `onDisappear`) are also usually detailed in the `Event`s

```Swift
enum Event {
    case onAppear
    case addButtonTapped
    case cancelButtonTapped
}

func send(_ event: Event) {
    switch event {
        case .onAppear:
            // Set handle anything that needs to be done one the view appears
        case .addButtonTapped:
            // Handle add button tap
        case .cancelButtonTapped:
            // Handle cancel button tap 
    }   
}
```

## Navigator
Provides additional views for the current screen. Destinations are defined for each coordinator and essentiall list the different paths able to be reached from the current screen.

```Swift
enum Destination {
    case addItem
    case tooltipModal
}

@ViewBuilder func view(for destination: Destination) -> some View {
    switch destination {
        case .addItem:
            AddItemView()
        case .tooltipModal:
            TooltipView()
    }
}
```
