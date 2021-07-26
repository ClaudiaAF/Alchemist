//
//  Constants.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import Foundation
import CoreGraphics
import SwiftUI

//layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
