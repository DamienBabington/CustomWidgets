//
//  FooterCircleView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

struct FooterCircleView: View {
    let color: String
    
    var body: some View {
        Circle()
            .fill(Color(hex: color))
            .frame(width: 50, height: 50)
            .draggable(color) {
                // View appearance while being dragged:
                Circle()
                    .fill(Color(hex: color))
                    .frame(width: 50, height: 50)
                    .shadow(radius: 6)
                    .onAppear {
                        print("Widget started being dragged: Add strokeBorder and white fill to the dragged FooterCircle")
                        // .fill(.white)
                        // .strokeBorder(style: StrokeStyle(lineWidth: 2.0, dash: [6]))
                        // .foregroundStyle(Color(hex: color))
                        // .frame(width: 50, height: 50)
                    }
            }
    }
}

#Preview {
    FooterCircleView(color: "00CFFF")
}
