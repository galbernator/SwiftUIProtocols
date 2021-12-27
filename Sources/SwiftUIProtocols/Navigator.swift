//
//  File.swift
//  
//
//  Created by Steve Galbraith on 12/27/21.
//

import SwiftUI

protocol Navigator {
    associatedtype Destination
    associatedtype ViewContent: View

    /// The means of providing the next view by the conforming object
    /// - Parameter destination: A `Destination` as defined in the conforming object
    @ViewBuilder func view(for destination: Destination) -> ViewContent
}

extension Navigator {
    @ViewBuilder func view(for destination: DefaultDestination) -> some View {
        Text("Providing views must be handled in the conforming class, not by the default implementation")
    }
}

/// Placeholder for default implementaiton of `Navigator` - NOT MEANT FOR USE
enum DefaultDestination {
    case test
}
