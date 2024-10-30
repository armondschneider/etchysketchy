//
//  ContentView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CanvasView()
            ControlsView()
                .padding(.bottom, 20)
        }
        .background(Color.red)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
