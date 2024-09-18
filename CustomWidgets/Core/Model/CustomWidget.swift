//
//  CustomWidget.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import Foundation
import CoreTransferable
import UniformTypeIdentifiers

struct CustomWidget: Identifiable, Hashable {
    let id: String = NSUUID().uuidString
    let hexColor: String
//    let columns: Int
//    let rows: Int
//    let showShadow: Bool
}

extension CustomWidget: Codable, Transferable {
    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .widget)
    }
}

extension UTType {
    static let widget = UTType(exportedAs: "com.damienbabington.CustomWidgets")
}
