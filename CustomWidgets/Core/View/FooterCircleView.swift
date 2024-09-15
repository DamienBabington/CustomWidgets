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
    }
}

#Preview {
    FooterCircleView(color: "00CFFF")
}
