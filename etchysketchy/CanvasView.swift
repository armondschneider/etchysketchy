//
//  CanvasView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct CanvasView: View {
    @State private var path = Path()
    @State private var currentPoint = CGPoint(x: 150, y: 200)

    var body: some View {
        Canvas { context, size in
            context.stroke(path, with: .color(.black), lineWidth: 2)
        }
        .background(Color.white)
        .frame(width: 300, height: 550)
        .cornerRadius(20)
        .padding()
    }
}
