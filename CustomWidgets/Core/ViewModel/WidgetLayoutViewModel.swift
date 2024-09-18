//
//  WidgetLayoutViewModel.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

class WidgetLayoutViewModel: NSObject, ObservableObject {
    
    @Published var widgets = [CustomWidget]()
    @Published var draggingWidget: CustomWidget?
    
    let columns = [
        GridItem(.flexible(minimum: 60, maximum: 60))
    ]
    
    func configureDroppedWidget() {
        
    }
}
