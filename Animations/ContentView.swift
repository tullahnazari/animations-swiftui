//
//  ContentView.swift
//  Animations
//
//  Created by Tullah Nazari on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            // do nothing now
            enabled.toggle()
//            animationAmount += 1
        }
        .padding(50)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
