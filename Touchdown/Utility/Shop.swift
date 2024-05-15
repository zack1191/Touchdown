//
//  Shop.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import Foundation
class Shop:ObservableObject{
    @Published var showingProduct:Bool = false
    @Published var selectedProduct:Product? = nil
    
}
