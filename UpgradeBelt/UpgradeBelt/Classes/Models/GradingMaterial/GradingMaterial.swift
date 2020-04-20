//
//  GradingMaterial.swift
//  UpgradeBelt
//
//  Created by Denis on 08.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import Foundation

struct GradingMaterial: Codable {
    var id: Int
    var colorBelts: [GradingItem]
    var blackBelts: [GradingItem]
    
}
