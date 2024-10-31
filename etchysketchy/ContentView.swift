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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            ControlsView()
                .padding(.bottom, 60)
        }
        .background(Color.red)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
