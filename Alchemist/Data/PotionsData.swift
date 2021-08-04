//
//  Potions Data.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import Foundation
import SwiftUI

let PotionsData: [PotionsModel] = [
    PotionsModel(name: "Restore Health", description: "Regain a certain amount of HP when ingesting. This will not only allow you to fight for longer, but you will be able to take more hits as well!", image: "MinorHealing", points: "20"),
    PotionsModel(name: "Cure Disease", description: "After ingesting, you will be cured of all diseases which were present", image: "TreeSap", points: "10"),
    PotionsModel(name: "Fortify Carry Weight", description: "Your stamina will be increased and your carry weight limit will momentarily increase", image: "GreenBottle", points: "15"),
    PotionsModel(name: "Invisibility", description: "Become invisible for about 20 seconds", image: "GreenBottle", points: "20"),
    PotionsModel(name: "Restore Magicka", description: "Restore 20 Magicka instantly", image: "MinorMagicka", points: "20"),
    PotionsModel(name: "Resist Fire", description: "Gain immunity against fire for 1 minute", image: "FullHeal", points: "30")
]

let sampleProduct: PotionsModel = PotionsData[0]
