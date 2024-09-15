//
//  CustomWidgetsApp.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

@main
struct CustomWidgetsApp: App {
    @StateObject var widgetsViewModel = WidgetLayoutViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(widgetsViewModel)
        }
    }
}
