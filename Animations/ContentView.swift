//
//  ContentView.swift
//  Animations
//
//  Created by Tullah Nazari on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            // do nothing now
            animationAmount += 1
        }
        .padding(50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
