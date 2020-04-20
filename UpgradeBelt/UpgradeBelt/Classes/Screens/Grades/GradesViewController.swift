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
    
    var name: String?
    var numberOfSectionsInt: Int?
    
    var gradingMaterialDictionary: [String : AnyObject] = [:]
    var gratingItemInColorBeltsDictionary: [String : AnyObject]?
    
    
    var cellID = "GradeTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradesTableView.delegate = self
        gradesTableView.dataSource = self
        
        
        self.gradingMaterialDictionary = LocalJsonDataManager.shared.gradingMaterialDictionary
        
        let patternsInGratingItemArray = gratingItemInColorBeltsDictionary?["patterns"]
        let terminologyInGratingItemArray = gratingItemInColorBeltsDictionary?["terminology"]
        
     
    }   
}

extension GradesViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return gradingMaterialDictionary.count - 1
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        print (section)
        if section == 1 {
            self.name = "\(ColorBeltModel().nameSection)"
        }
        return name
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.gradingMaterialDictionary["colorBelts"]!.count!)
        
        if let colorBelts = self.gradingMaterialDictionary["colorBelts"] {
            if let numberOfRowsInSectionCount = colorBelts.count {
                self.numberOfSectionsInt = numberOfRowsInSectionCount
            }
             
        }
        
       
        return numberOfSectionsInt ?? 5

    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = gradesTableView.dequeueReusableCell(withIdentifier: cellID) as? GradeTableViewCell
        
        cell?.beltLabel.text = "grade"
        
        return cell ?? UITableViewCell()
    }
    
    
  
}

