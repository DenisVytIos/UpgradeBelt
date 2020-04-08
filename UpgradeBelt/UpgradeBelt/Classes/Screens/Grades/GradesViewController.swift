//
//  ViewController.swift
//  UpgradeBelt
//
//  Created by Denis on 03.04.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import UIKit

class GradesViewController: UITableViewController {

   
    @IBOutlet var gradesTableView: UITableView!
    
    var cellID = "GradeTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradesTableView.delegate = self
        gradesTableView.dataSource = self
        
        
        let data = LocalJsonDataManager().gradingMaterial
//        
        print(data)
        
        
//        guard let path = Bundle.main.path(forResource: "grading", ofType: "json") else { return }
//         let url = URL(fileURLWithPath: path)
//        do {
//             let data = try  Data(contentsOf: url)
//            print(data)
//            
//            let gradingJson = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
//           print(gradingJson)
//            
//            let decoder = JSONDecoder()
//            var decoderOfferModel: GradingMaterial?
////            if data != nil {
//            decoderOfferModel = try? decoder.decode(GradingMaterial.self, from: data)
////            }
//            
//            print(decoderOfferModel)
            
//            let gradingJson = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
//
//            guard let array = gradingJson as? [Any] else { return }
//
//            for user in array {
//                guard let userDict = user as? [String : Any] else { return }
//                print(userDict)
//            }
            
            
            
//            let grading = try JSONDecoder().decode([String : Int].self, from: data)
////            print(grading)
//        } catch  {
//            print(error)
//        }
        
        
    }
 
    
    
}

extension GradesViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section)"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = gradesTableView.dequeueReusableCell(withIdentifier: cellID) as? GradeTableViewCell
        
        cell?.beltLabel.text = "grade"
        
        return cell ?? UITableViewCell()
    }
    
    
  
}

