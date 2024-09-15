//
//  WidgetLayoutView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: WidgetLayoutViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            WidgetLayoutView()
            
            Spacer()
            
            FooterView()
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(WidgetLayoutViewModel())
}
