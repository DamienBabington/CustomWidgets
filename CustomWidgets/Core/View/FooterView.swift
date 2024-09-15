//
//  ColorPickerView.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

struct FooterView: View {
    @EnvironmentObject var viewModel: WidgetLayoutViewModel
    
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.white)
                .frame(width: 350, height: 65)
                .shadow(radius: 6)
            
            HStack(spacing: 16) {
                ForEach(viewModel.buttonColors, id: \.self) { color in
                    FooterCircleView(color: color)
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
