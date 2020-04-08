//
//  GradingItem.swift
//  UpgradeBelt
//
//  Created by Denis on 08.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import Foundation

class GradingItem: Codable {
    
    var id: String
    var grade: String
    var requirements: String
    var patterns: [GradingPattern]
    var terminology: [TerminologyItem]
}




