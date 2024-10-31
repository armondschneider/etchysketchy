//
//  KnobView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct KnobView: View {

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 90, height: 90)
                .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0.0, y: 4)
            
            Circle()
                .stroke(.gray, lineWidth: 0.2)
                .frame(width: 75, height: 75)

            // Image(systemName: icon)
                .foregroundColor(.gray)
                .font(.title)
        }
    }
}

struct KnobView_Previews: PreviewProvider {
    static var previews: some View {
        KnobView()
    }
}
