//
//  CanvasView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

class CanvasView: ObservableObject {
    @Published var path = Path()  // Publish changes to path
    @Published var currentPoint = CGPoint(x: 150, y: 200)  // Start point

    // Function to update the path based on offset changes
    func updatePath(xOffset: Double, yOffset: Double) {
        let newPoint = CGPoint(
            x: currentPoint.x + CGFloat(xOffset),
            y: currentPoint.y + CGFloat(yOffset)
        )
        
        path.move(to: currentPoint)
        path.addLine(to: newPoint)
        
        currentPoint = newPoint  // Update current point
    }
}
