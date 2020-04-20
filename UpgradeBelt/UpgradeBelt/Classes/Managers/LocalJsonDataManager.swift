//
//  LocalJsonDataManager.swift
//  UpgradeBelt
//
//  Created by Denis on 08.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import Foundation

public class LocalJsonDataManager {
    
    static let shared = LocalJsonDataManager()
    @Published var gradingMaterialDictionary = [String: AnyObject]()
    private init() {
        loadGradingMaterialFromLocalJson()
        //        sort()
    }
    
    func loadGradingMaterialFromLocalJson() {
        guard let path = Bundle.main.path(forResource: "grading1", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let gradingJson = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            guard let gradingDictionary = gradingJson as? [String: AnyObject] else { return }
            self.gradingMaterialDictionary = gradingDictionary
            
        } catch  {
            print(error)
        }
    }
    
    func sort() {
        //        self.gradingMaterial = self.gradingMaterial.sorted(by: { $0.id < $1.id })
    }
    
}
