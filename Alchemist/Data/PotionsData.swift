//
//  Potions Data.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import Foundation
import SwiftUI

let PotionsData: [PotionsModel] = [
    PotionsModel(name: "Restore Health", description: "Regain a certain amount of HP when ingesting.", image: "MinorHealing", points: "Full Health Restore", ingredient1: "Blue Mountain Flower", ingredient2: "Butterfly Wing", ingredient1IMG: "BlueMountainFlower", ingredient2IMG: "ButterflyWing", longDescription: "Health potions are probably the most commonly used potions in Skyrim. The Restore Health potion not only heals you, but it fortify's your health as well, making you even tougher"),
    
    PotionsModel(name: "Cure Disease", description: "After ingesting, you will be cured of all diseases which were present", image: "TreeSap", points: "Cure all Diseases", ingredient1: "Vampire Dust", ingredient2: "Charred Skeever Hide", ingredient1IMG: "VampireDust", ingredient2IMG: "CharredSkeeverHide", longDescription: "Getting a disease begins a slow, annoingly tedious chip away at your health over time - most commonly at the worst times when you are one-hit away from death. The Cure Disease potion will cure you of any of these ailments so you do not have to suffer anymore."),
    
    PotionsModel(name: "Fortify Stamina", description: "Stamina will increase fully", image: "GreenBottle", points: "Restore 50% of Stamina", ingredient1: "Garlic", ingredient2: "Lavender", ingredient1IMG: "Garlic", ingredient2IMG: "Lavender", longDescription: "Swinging a Two-Handed weapon? Running away from Giants and their pet Mammoths after accidentally stealing from one of their chests unknowingly? Take the Fortify Stamina potion and you'll be able to swing your Two-handed weapon at least a couple more times in one go, and be able to outrun your mistakes without getting tired."),
    
    PotionsModel(name: "Invisibility", description: "Become invisible for about 20 seconds", image: "Invisibility", points: "Invisibility for 1 Minute", ingredient1: "Chaurus Egg", ingredient2: "Nirnroot", ingredient1IMG: "ChaurusEgg", ingredient2IMG: "NirnRoot", longDescription: "This potion is excellent for getting out of a tight spot. Surrounded by enemies that outnumber you? Drink one of these and you can invisibly flee to safety and regather yourself to return to the fight again."),
    
    PotionsModel(name: "Restore Magicka", description: "Restore 20 Magicka instantly", image: "MinorMagicka", points: "Fully Restore Magicka", ingredient1: "Creep Cluster", ingredient2: "Red Mountain Flower", ingredient1IMG: "CreepCluster", ingredient2IMG: "RedMountainFlower", longDescription: "Much like our Restore Stamina and Restore Health potions, Restore Magicka will fully replenish your Magicka, allowing you to zap your enemies or burn them to a crisp for a little while longer."),
    
    PotionsModel(name: "Resist Fire", description: "Gain immunity against fire for 1 minute", image: "ResistFire", points: "Take 20% less Fire Damage", ingredient1: "Fly Amanita", ingredient2: "Snowberries", ingredient1IMG: "FlyAmanita", ingredient2IMG: "Snowberries", longDescription: "Great for protection against dragons surprising you with an engulfment of flames whilst minding your own business, amongst many other things. Resist Fire will provide less fire damage for at least 1 minute."),
    
    PotionsModel(name: "Waterbreathing", description: "Breathe under water for 1 minute", image: "Waterbreathing", points: "Waterbreathing for 1 Minute", ingredient1: "Chickens Egg", ingredient2: "Nordic Barnacle", ingredient1IMG: "ChickensEgg", ingredient2IMG: "NordicBarnacle", longDescription: "Whether it be trying to evade enemies, catch fish in the deep waters or cross from one location to another, the Waterbreathing potion will allow you to breath under water for at least 1 minute without damaging your stamina at the same time."),
    
    PotionsModel(name: "Fortify Illusion", description: "Fully fortify illusion magicka", image: "TreeSap", points: "Increase Illusion Power by 50%", ingredient1: "Dragons Tongue", ingredient2: "Mora Topinella", ingredient1IMG: "DragonsTongue", ingredient2IMG: "MoraTopinella", longDescription: "Fortify Illusion increases the magnitude of illusion spells, meaning your spells will be able to affect higher-level creatures with a fury. Use this potion to your advantage, and just for enjoyment if you so wish."),
    
    PotionsModel(name: "Resist Frost", description: "Resist frost damage for 1 minute", image: "ResistFrost", points: "Take 20% less Frost Damage", ingredient1: "Purple Mountain Flower", ingredient2: "Thistle Branch", ingredient1IMG: "PurpleMountainFlower", ingredient2IMG: "ThistleBranch", longDescription: "When exloring the lands of Winterhold, it can get quite chilly to say the least. Consuming a Resist Frost potion will decrease the damage of frost, whether it be from ice wraiths or just the bite in the wind."),
    
    PotionsModel(name: "Fortify Enchanting", description: "Fully fortify enchanting magicka", image: "Enchanting", points: "Increase Enchanting Power by 50%", ingredient1: "Blue Butterfly Wing", ingredient2: "Snowberries", ingredient1IMG: "BlueButterflyWing", ingredient2IMG: "Snowberries", longDescription: "Drinking the Fortify Enchanting potion, your items created at the Arcane Enchanter will become even more powerful than usual. Be it you bow, dagger, sword, axe, long sword etc. you will be able to cause a substantial amount of powerful enchantments on your enemy with this potion.")
]

let sampleProduct: PotionsModel = PotionsData[0]
