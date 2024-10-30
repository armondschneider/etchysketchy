//
//  ControlsView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct ControlsView: View {
    @State private var xOffset: Double = 0
    @State private var yOffset: Double = 0

    var body: some View {
        HStack(spacing: 80) {
            KnobView(icon: "arrow.left.and.right")
                .onTapGesture {
                    // Add horizontal movement logic here
                }

            KnobView(icon: "arrow.up.and.down")
                .onTapGesture {
                    // Add vertical movement logic here
                }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
