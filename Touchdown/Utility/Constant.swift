//
//  Constant.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/14.
//

import Foundation
import SwiftUI

//Data
let players:[Player] = Bundle.main.load("player.json")
let categories:[CategoryVO] = Bundle.main.load("category.json")
let products:[Product] = Bundle.main.load("product.json")
let brands:[Brand] = Bundle.main.load("brand.json")
let sampleProduct:Product = products[0]
//Color
let colorBackground:Color = Color("ColorBackground")
let colorGray:Color = Color(UIColor.systemGray4)
//Layout
let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout:[GridItem]{
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
//Ux
let feedback = UIImpactFeedbackGenerator(style: .medium)
//Api
//Image
//Font
//String
//Misc
