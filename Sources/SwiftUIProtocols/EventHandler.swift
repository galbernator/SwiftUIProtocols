//
//  File.swift
//  
//
//  Created by Steve Galbraith on 12/27/21.
//

import SwiftUI

/// The `EventHandler` protocol is meant to be used in conjuction with the `Coordinator` protocol to be able to handle user events and trigger the necessary change in state to either update data or navigate to the next view.
protocol EventHandler {
    associatedtype Event

    /// The means of sending a signal that a user event has occured and needs to be handled by the conforming object
    /// - Parameter event: An `Event` as defined in the conforming object
    func send(_ event: Event)
}

extension EventHandler {
    func send(_ event: DefaultEvent) {
        fatalError("Receiving events must be handled in the conforming class, not by the default implementation")
    }
}

/// Placeholder for default implementaiton of `EventHandler` - NOT MEANT FOR USE
enum DefaultEvent {
    case test
}
