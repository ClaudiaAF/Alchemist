//
//  Dungeon.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 13/05/1400 AP.
//

import Foundation

class Dungeon: ObservableObject {
    @Published var showingPotion: Bool = false
    @Published var selectedPotion: PotionsModel? = nil
}
