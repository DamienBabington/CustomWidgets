//
//  FooterView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

struct FooterView: View {
    
    let footerColors = [
        "#00CFFF",
        "#FF5C93",
        "#FFEB3B",
        "#AEEA00",
        "#FF6D00"
    ]
    
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.white)
                .frame(width: 350, height: 65)
                .shadow(radius: 6)
            
            HStack(spacing: 16) {
                ForEach(footerColors, id: \.self) { color in
                    WidgetView(widget: CustomWidget(hexColor: color))
                        .frame(width: 50, height: 50)
                }
            }
        }
        .padding()
    }
}

#Preview {
    FooterView()
        .environmentObject(WidgetLayoutViewModel())
}
