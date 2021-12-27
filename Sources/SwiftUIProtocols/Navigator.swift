//
//  File.swift
//  
//
//  Created by Steve Galbraith on 12/27/21.
//

import SwiftUI

public protocol Navigator {
    associatedtype Destination
    associatedtype ViewContent: View

    /// The means of providing the next view by the conforming object
    /// - Parameter destination: A `Destination` as defined in the conforming object
    public @ViewBuilder func view(for destination: Destination) -> ViewContent
}

public extension Navigator {
    public @ViewBuilder func view(for destination: DefaultDestination) -> some View {
        Text("Providing views must be handled in the conforming class, not by the default implementation")
    }
}

/// Placeholder for default implementaiton of `Navigator` - NOT MEANT FOR USE
public enum DefaultDestination {
    case test
}
