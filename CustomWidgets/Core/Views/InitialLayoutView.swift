//
//  InitialLayoutView.swift
//  WidgetTest
//
//  Created by Damien Babington on 9/17/24.
//

import SwiftUI

struct InitialLayoutView: View {
    @EnvironmentObject var viewModel: WidgetLayoutViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 36)
                .strokeBorder(style: StrokeStyle(lineWidth: 2.0, dash: [4]))
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
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        .dropDestination(for: CustomWidget.self) { droppedWidget, location in
            viewModel.widgets.append(contentsOf: droppedWidget)
            return false
        } isTargeted: { status in
            print("Widget hovered over initial layout view")
        }
        
    }
}

#Preview {
    InitialLayoutView()
}
