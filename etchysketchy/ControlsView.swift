//
//  ControlsView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct ControlsView: View {
    var onMove: (Double, Double) -> Void

    @State private var xOffset: Double = 10
    @State private var yOffset: Double = 10
    
    var body: some View {
        HStack(spacing: 80) {
            VStack {
                Image("left-right")
                Spacer()
                    .frame(height: 20)
                KnobView()
                    .onTapGesture {
                        onMove(xOffset, 0)  // Move horizontally
                    }
            }
            
            VStack {
                Image("up-down")
                Spacer()
                    .frame(height: 20)
                KnobView()
                    .onTapGesture {
                        onMove(0, yOffset)  // Move vertically
                    }
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView { _, _ in }
    }
}
