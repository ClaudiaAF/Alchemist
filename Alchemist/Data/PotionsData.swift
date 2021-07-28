//
//  Potions Data.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import Foundation
import SwiftUI

let PotionsData: [PotionsModel] = [
    PotionsModel(name: "Restore Health Potion", description: "Regain a certain amount of HP when ingesting", image: "Drop of blood \u{1FA78}", points: [20]),
    PotionsModel(name: "Cure Disease", description: "After ingesting, you will be cured of all diseases which were present", image: "Syringe \u{1F489}", points: [10]),
    PotionsModel(name: "Fortify Carry Weight", description: "Your stamina will be increased and your carry weight limit will momentarily increase", image: "Backpack \u{1F392}", points: [15]),
    PotionsModel(name: "Invisibility Potion", description: "Become invisible for about 20 seconds", image: "Magnifying glass tilted right \u{1F50E}", points: [20]),
    PotionsModel(name: "Restore Magicka", description: "Restore 20 Magicka instantly", image: "Sparkles \u{2728}", points: [20]),
    PotionsModel(name: "Resist Fire", description: "Gain immunity against fire for 1 minute", image: "Fire \u{1F525}", points: [30])
]
