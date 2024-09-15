//
//  Widget.swift
//  CustomWidgets
//
//  Created by Damien Babington on 9/15/24.
//

import Foundation

struct Widget: Identifiable, Hashable {
    let id: String = NSUUID().uuidString
    let hexColor: String
//    let width: Int
//    let height: Int
//    let showShadow: Bool
//    let isBeingDragged: Bool
}
