//
//  WidgetLayoutView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct WidgetLayoutView: View {
    @EnvironmentObject var viewModel: WidgetLayoutViewModel
    @State var changedView: Bool = false
    
    var body: some View {
        Grid() {
            if viewModel.widgets.isEmpty {
                InitialLayoutView()
            } else {
                ForEach(viewModel.widgets) { widget in
                    WidgetView(widget: widget)
                        .onDrop(of: [UTType.widget], delegate: DroppedDelegate(viewModel: viewModel, widget: widget, changedView: $changedView))
                }
            }
        }
        .animation(.default, value: viewModel.widgets)
        .frame(maxWidth: 350, maxHeight: 350)
        .onDrop(of: [UTType.text], delegate: DropOutsideDelegate(viewModel: viewModel, changedView: $changedView))
    }
}

#Preview {
    WidgetLayoutView()
        .environmentObject(WidgetLayoutViewModel())
}


// MARK: - Drop Delegate

struct DroppedDelegate: DropDelegate {
    
    let viewModel: WidgetLayoutViewModel
    let widget: CustomWidget
    @Binding var changedView: Bool
    
    func dropEntered(info: DropInfo) {
        print("Drop entered with widget: \(viewModel.draggingWidget?.hexColor)")
        if viewModel.draggingWidget == nil { viewModel.draggingWidget = widget }
        
        changedView = true
        
        // Move widgets when dragged on other widgets
        if widget != viewModel.draggingWidget {
            let from = 0
            let to = viewModel.widgets.firstIndex(of: widget)!
            if viewModel.widgets[to].id != viewModel.draggingWidget!.id {
                viewModel.widgets.move(fromOffsets: IndexSet(integer: from),
                    toOffset: to > from ? to + 1 : to)
            }
        }
    }

    func performDrop(info: DropInfo) -> Bool {
        print("Dropped Widget hex: \(viewModel.draggingWidget?.hexColor)")
        if let dropped = viewModel.draggingWidget {
            viewModel.widgets.append(dropped)
        }
        changedView = false
        self.viewModel.draggingWidget = nil
        return true
    }
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
}


// MARK: - DropOutside Delegate

// Handle when widget is dropped outside the layout view
struct DropOutsideDelegate: DropDelegate {
    
    let viewModel: WidgetLayoutViewModel
    @Binding var changedView: Bool
        
    func dropEntered(info: DropInfo) {
        changedView = true
    }
    
    func performDrop(info: DropInfo) -> Bool {
        changedView = false
        viewModel.draggingWidget = nil
        return true
    }
}
