//
//  HexColorExtension.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import SwiftUI

extension Color {
    init(hex: String) {
        // Remove '#' from hex string and convert to Int
        let trimmedHex = hex.replacingOccurrences(of: "#", with: "")
        let rgb = UInt32(trimmedHex, radix: 16)
        
        /* Calculate RGB
           Using '&' operator masks, or ignores, the hexadecimal characters with values of 0.
           Shift the two non-zero characters all the way to the right to extract the value for that byte.
           Divide by 255 to get a value between the required range of 0 to 1 for each color.
         
         Example: Hex value AA2277 will be split into 3 bytes: AA, 22, and 77.
                  Decimal values: AA = 170, 22 = 34, 77 = 119
                  RGB: 170/255 = 0.67 (red), 34/255 = 0.13 (green), 119/255 = 0.47 (blue)
         */
        
        let redValue = Double((rgb! & 0xFF0000) >> 16) / 255
        let greenValue = Double((rgb! & 0x00FF00) >> 8) / 255
        let blueValue = Double(rgb! & 0x0000FF) / 255
        
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}
