//
//  Potions Data.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import Foundation
import SwiftUI

let PotionsData: [PotionsModel] = [
    PotionsModel(name: "Restore Health Potion", description: "Regain a certain amount of HP when ingesting", image: "🩸", points: [20]),
    PotionsModel(name: "Cure Disease", description: "After ingesting, you will be cured of all diseases which were present", image: "💉", points: [10]),
    PotionsModel(name: "Fortify Carry Weight", description: "Your stamina will be increased and your carry weight limit will momentarily increase", image: "🧰", points: [15]),
    PotionsModel(name: "Invisibility Potion", description: "Become invisible for about 20 seconds", image: "🪄", points: [20]),
    PotionsModel(name: "Restore Magicka", description: "Restore 20 Magicka instantly", image: "✨", points: [20]),
    PotionsModel(name: "Resist Fire", description: "Gain immunity against fire for 1 minute", image: "🔥", points: [30])
]
