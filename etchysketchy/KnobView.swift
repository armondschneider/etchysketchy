//
//  KnobView.swift
//  etchysketchy
//
//  Created by Armond Schneider on 10/30/24.
//

import SwiftUI

struct KnobView: View {
    let icon: String 

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 60, height: 60)
                .shadow(radius: 5)

            Image(systemName: icon)
                .foregroundColor(.gray)
                .font(.title)
        }
    }
}

struct KnobView_Previews: PreviewProvider {
    static var previews: some View {
        KnobView(icon: "arrow.left.and.right")
    }
}
