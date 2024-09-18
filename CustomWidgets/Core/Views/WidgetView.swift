//
//  WidgetView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct WidgetView: View {
    @EnvironmentObject var viewModel: WidgetLayoutViewModel
    var widget: CustomWidget
    
    var body: some View {
        RoundedRectangle(cornerRadius: 36)
            .fill(Color(hex: widget.hexColor))
            .draggable(widget) {
                RoundedRectangle(cornerRadius: 36)
                    .fill(Color(hex: widget.hexColor))
                    .shadow(radius: 6)
                    .frame(width: 50, height: 50)
                    .onAppear() {
                        viewModel.draggingWidget = widget
                        print("Started dragging widget with hex: \(widget.hexColor)")
                    }
            }
    }
}

#Preview {
    WidgetView(widget: CustomWidget(hexColor: "00CFFF"))
}
