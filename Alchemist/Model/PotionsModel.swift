//
//  PotionsModel.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import Foundation
import SwiftUI

struct PotionsModel: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var points: [Int]
}
