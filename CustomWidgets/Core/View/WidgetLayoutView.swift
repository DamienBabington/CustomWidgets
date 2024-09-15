//
//  WidgetLayoutView.swift
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
        .dropDestination(for: String.self) { droppedWidget, location in
            print("Widget Dropped: Remove shadow from dropped widget and reset appearance of FooterCircleView")
            print("Drop Location: \(location)")
            print("Color data of dropped widget: \(droppedWidget)")
            return false
        } isTargeted: { status in
            print("Widget hovered over drop target: Add widget to this target's Widget array and recalculate the frames and positions")
            // withAnimation(.bouncy) { }
        }
    }
}

#Preview {
    WidgetLayoutView()
}
