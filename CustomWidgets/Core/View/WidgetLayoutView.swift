//
//  WidgetView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

struct WidgetLayoutView: View {
    @EnvironmentObject var viewModel: WidgetLayoutViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(style: StrokeStyle(lineWidth: 2.0, dash: [6]))
                .frame(minWidth: 250, idealWidth: 350, maxWidth: 400, minHeight: 250, idealHeight: 350, maxHeight: 400, alignment: .center)
                .foregroundStyle(.gray)
                .padding()
            
            VStack(spacing: 12) {
                Text("👋")
                    .font(.largeTitle)
                
                Text("Hi! Drag and drop your widgets to unleash your creativity!")
                    .font(.headline)
                    .foregroundStyle(.gray)
            }
            .padding(32)
        }
    }
}

#Preview {
    WidgetLayoutView()
}
