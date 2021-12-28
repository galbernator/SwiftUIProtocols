//
//  SwiftUIView.swift
//  
//
//  Created by Steve Galbraith on 12/28/21.
//

import SwiftUI

/// Allows for the view body to be specifically built when the body is called
public struct LazyView<Content: View>: View {
    @ViewBuilder var build: (() -> Content)
    
    public init(build: @escaping (() -> Content)) {
        self.build = build
    }

    public var body: some View {
        build()
    }
}

struct LazyView_Previews: PreviewProvider {
    static var previews: some View {
        LazyView {
            Text("Testing...")
        }
    }
}
