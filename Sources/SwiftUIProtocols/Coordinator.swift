//
//  File.swift
//  
//
//  Created by Steve Galbraith on 12/27/21.
//

import SwiftUI

/// The `Coordinator` protocol allows the conforming object to provide handling user events (via the `EventHandler` protocol), owning navigation (via the `Navigator` protocol) and providing the initial view.
protocol Coordinator: EventHandler, Navigator {
    associatedtype StartContent: View

    /// Provides the initial view for the coordinator when accessed directly by user interation.
    @ViewBuilder func start() -> StartContent
}

extension Coordinator {
    @ViewBuilder func start() -> some View {
        Text("Providing views must be handled in the conforming class, not by the default implementation")
    }
}
