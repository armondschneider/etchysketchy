//
//  ContentView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var canvasView = CanvasView()

    var body: some View {
        VStack {
            Canvas { context, size in
                context.stroke(canvasView.path, with: .color(.black), lineWidth: 2)
            }
            .background(Color.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .cornerRadius(20)
            .padding()
            .padding(.top, 60)

            ControlsView { xOffset, yOffset in
                canvasView.updatePath(xOffset: xOffset, yOffset: yOffset)
            }
            .padding(.bottom, 60)
        }
        .background(Color.red)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
