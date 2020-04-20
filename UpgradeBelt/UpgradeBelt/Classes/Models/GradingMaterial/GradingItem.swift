//
//  GradingItem.swift
//  UpgradeBelt
//
//  Created by Denis on 08.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import Foundation

class GradingItem: Codable {
    
    var grade: String
    var id: Int
    var patterns: [GradingPattern]
    var requirements: String
    
    var terminology: [TerminologyItem]
}




