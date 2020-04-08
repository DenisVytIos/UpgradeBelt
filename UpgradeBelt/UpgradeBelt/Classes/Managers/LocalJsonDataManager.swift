//
//  LocalJsonDataManager.swift
//  UpgradeBelt
//
//  Created by Denis on 08.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import Foundation

public class LocalJsonDataManager {
    
    @Published var gradingMaterial = []
    
    init() {
        load()
//        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "grading", withExtension: "json") {
            do {
                 let data = try Data(contentsOf: fileLocation)
                
                let dataFromJson = try JSONDecoder().decode(GradingMaterial.self, from: data)
                print(dataFromJson)
               
//                self.gradingMaterial = dataFromJson.blackBelts
            } catch  {
                print("Failed to decode JSON")
                print(error)
            }
        }
    }
    
    func sort() {
//        self.gradingMaterial = self.gradingMaterial.sorted(by: { $0.id < $1.id })
    }
    
}
